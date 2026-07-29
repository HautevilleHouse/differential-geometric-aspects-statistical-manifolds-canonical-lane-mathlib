import HautevilleHouse.DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

structure StatisticalManifoldPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  fisherInformationMetric : Type w
  affineConnection : Type x
  curvatureInvariants : Type y
  smoothParametrization : Prop
  metricPositiveDefinite : Prop
  metricSmooth : Prop
  connectionTorsionFree : Prop
  connectionMetricCompatible : Prop
  curvatureInvariantsDefined : Prop

structure StatisticalManifoldEvidence (S : StatisticalManifoldPackage) where
  smoothParametrizationClosed : S.smoothParametrization
  metricPositiveDefiniteClosed : S.metricPositiveDefinite
  metricSmoothClosed : S.metricSmooth
  connectionTorsionFreeClosed : S.connectionTorsionFree
  connectionMetricCompatibleClosed : S.connectionMetricCompatible
  curvatureInvariantsDefinedClosed : S.curvatureInvariantsDefined

def StatisticalManifoldClosed (S : StatisticalManifoldPackage) : Prop :=
  S.smoothParametrization ∧ S.metricPositiveDefinite ∧ S.metricSmooth ∧
  S.connectionTorsionFree ∧ S.connectionMetricCompatible ∧ S.curvatureInvariantsDefined

theorem statistical_manifold_closed_from_evidence
    (S : StatisticalManifoldPackage) (E : StatisticalManifoldEvidence S) :
    StatisticalManifoldClosed S := by
  exact And.intro E.smoothParametrizationClosed
    (And.intro E.metricPositiveDefiniteClosed
      (And.intro E.metricSmoothClosed
        (And.intro E.connectionTorsionFreeClosed
          (And.intro E.connectionMetricCompatibleClosed
            E.curvatureInvariantsDefinedClosed))))

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse
