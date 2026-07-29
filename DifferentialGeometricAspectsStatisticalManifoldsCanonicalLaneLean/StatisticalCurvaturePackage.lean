import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

structure StatisticalCurvaturePackage where
  carrier: Type u
  topology: TopologicalSpace carrier
  metric: Type v
  riemannCurvatureTensor: Type w
  ricciTensor: Type x
  scalarCurvature: Type y
  smoothManifold: Prop
  metricSmooth: Prop
  fisherInformationMetric: Prop
  connectionCompatible: Prop

structure StatisticalCurvatureEvidence (G: StatisticalCurvaturePackage) where
  smoothManifoldClosed: G.smoothManifold
  metricSmoothClosed: G.metricSmooth
  fisherInformationMetricClosed: G.fisherInformationMetric
  connectionCompatibleClosed: G.connectionCompatible

def StatisticalCurvatureClosed (G: StatisticalCurvaturePackage): Prop :=
  G.smoothManifold ∧ G.metricSmooth ∧ G.fisherInformationMetric ∧ G.connectionCompatible

theorem statistical_curvature_closed_from_evidence
    (G: StatisticalCurvaturePackage) (E: StatisticalCurvatureEvidence G): StatisticalCurvatureClosed G := by
  exact And.intro E.smoothManifoldClosed (And.intro E.metricSmoothClosed (And.intro E.fisherInformationMetricClosed E.connectionCompatibleClosed))

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse
