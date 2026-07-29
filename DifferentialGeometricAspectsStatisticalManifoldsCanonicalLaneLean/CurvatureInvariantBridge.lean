import HautevilleHouse.DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean.StatisticalManifoldStructure

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

structure CurvatureInvariantPackage {S : StatisticalManifoldPackage} (C : StatisticalManifoldClosed S := by
  exact statistical_manifold_closed_from_evidence S (StatisticalManifoldEvidence.mk (by exact S.smoothParametrization) (by exact S.metricPositiveDefinite) (by exact S.metricSmooth) (by exact S.connectionTorsionFree) (by exact S.connectionMetricCompatible) (by exact S.curvatureInvariantsDefined))) where
  scalarCurvature : Prop
  ricciTensor : Prop
  sectionalCurvature : Prop
  holonomyGroup : Type v
  riemannCurvatureComputed : Prop
  sectionalCurvatureFormula : Prop
  holonomyDerived : Prop

structure CurvatureInvariantEvidence {S : StatisticalManifoldPackage}
    (P : CurvatureInvariantPackage (C := statistical_manifold_closed_from_evidence S (StatisticalManifoldEvidence.mk (by exact S.smoothParametrization) (by exact S.metricPositiveDefinite) (by exact S.metricSmooth) (by exact S.connectionTorsionFree) (by exact S.connectionMetricCompatible) (by exact S.curvatureInvariantsDefined)))) where
  scalarCurvatureClosed : P.scalarCurvature
  ricciTensorClosed : P.ricciTensor
  sectionalCurvatureClosed : P.sectionalCurvature
  holonomyDerivedClosed : P.holonomyDerived

def CurvatureInvariantClosed {S : StatisticalManifoldPackage}
    (P : CurvatureInvariantPackage (C := statistical_manifold_closed_from_evidence S (StatisticalManifoldEvidence.mk (by exact S.smoothParametrization) (by exact S.metricPositiveDefinite) (by exact S.metricSmooth) (by exact S.connectionTorsionFree) (by exact S.connectionMetricCompatible) (by exact S.curvatureInvariantsDefined)))) : Prop :=
  P.scalarCurvature ∧ P.ricciTensor ∧ P.sectionalCurvature ∧ P.holonomyDerived

theorem curvature_invariant_closed_from_evidence
    {S : StatisticalManifoldPackage}
    (P : CurvatureInvariantPackage (C := statistical_manifold_closed_from_evidence S (StatisticalManifoldEvidence.mk (by exact S.smoothParametrization) (by exact S.metricPositiveDefinite) (by exact S.metricSmooth) (by exact S.connectionTorsionFree) (by exact S.connectionMetricCompatible) (by exact S.curvatureInvariantsDefined))))
    (E : CurvatureInvariantEvidence P) : CurvatureInvariantClosed P := by
  exact And.intro E.scalarCurvatureClosed
    (And.intro E.ricciTensorClosed
      (And.intro E.sectionalCurvatureClosed E.holonomyDerivedClosed))

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse
