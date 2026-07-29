import HautevilleHouse.DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean.CurvatureInvariantBridge

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

structure HolonomyConnectionPackage {S : StatisticalManifoldPackage}
    (P : CurvatureInvariantPackage (C := statistical_manifold_closed_from_evidence S (StatisticalManifoldEvidence.mk (by exact S.smoothParametrization) (by exact S.metricPositiveDefinite) (by exact S.metricSmooth) (by exact S.connectionTorsionFree) (by exact S.connectionMetricCompatible) (by exact S.curvatureInvariantsDefined)))) where
  parallelTransport : Type u
  holonomyRepresentation : Type v
  curvatureHolonomyRelation : Prop
  holonomyLieAlgebra : Type w
  reductionTheorem : Prop
  connectionFlat : Prop

structure HolonomyConnectionEvidence {S : StatisticalManifoldPackage}
    {P : CurvatureInvariantPackage (C := statistical_manifold_closed_from_evidence S (StatisticalManifoldEvidence.mk (by exact S.smoothParametrization) (by exact S.metricPositiveDefinite) (by exact S.metricSmooth) (by exact S.connectionTorsionFree) (by exact S.connectionMetricCompatible) (by exact S.curvatureInvariantsDefined)))}
    (H : HolonomyConnectionPackage P) where
  parallelTransportClosed : H.parallelTransport
  holonomyRepresentationClosed : H.holonomyRepresentation
  curvatureHolonomyRelationClosed : H.curvatureHolonomyRelation
  holonomyLieAlgebraClosed : H.holonomyLieAlgebra
  reductionTheoremClosed : H.reductionTheorem

def HolonomyConnectionClosed {S : StatisticalManifoldPackage}
    {P : CurvatureInvariantPackage (C := statistical_manifold_closed_from_evidence S (StatisticalManifoldEvidence.mk (by exact S.smoothParametrization) (by exact S.metricPositiveDefinite) (by exact S.metricSmooth) (by exact S.connectionTorsionFree) (by exact S.connectionMetricCompatible) (by exact S.curvatureInvariantsDefined)))}
    (H : HolonomyConnectionPackage P) : Prop :=
  H.parallelTransport ∧ H.holonomyRepresentation ∧ H.curvatureHolonomyRelation ∧
  H.holonomyLieAlgebra ∧ H.reductionTheorem

theorem holonomy_connection_closed_from_evidence
    {S : StatisticalManifoldPackage}
    {P : CurvatureInvariantPackage (C := statistical_manifold_closed_from_evidence S (StatisticalManifoldEvidence.mk (by exact S.smoothParametrization) (by exact S.metricPositiveDefinite) (by exact S.metricSmooth) (by exact S.connectionTorsionFree) (by exact S.connectionMetricCompatible) (by exact S.curvatureInvariantsDefined)))}
    (H : HolonomyConnectionPackage P) (E : HolonomyConnectionEvidence H) :
    HolonomyConnectionClosed H := by
  exact And.intro E.parallelTransportClosed
    (And.intro E.holonomyRepresentationClosed
      (And.intro E.curvatureHolonomyRelationClosed
        (And.intro E.holonomyLieAlgebraClosed E.reductionTheoremClosed)))

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse
