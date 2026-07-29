import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

structure FisherMetricPackage where
  manifold : Type u
  parameterSpace : Type v
  metricTensor : parameterSpace → Type w
  positiveDefinite : Prop
  smoothInParameters : Prop
  coxReidParametrization : Prop

structure FisherMetricEvidence (F : FisherMetricPackage) where
  positiveDefiniteClosed : F.positiveDefinite
  smoothInParametersClosed : F.smoothInParameters
  coxReidParametrizationClosed : F.coxReidParametrization

def FisherMetricClosed (F : FisherMetricPackage) : Prop :=
  F.positiveDefinite ∧ F.smoothInParameters ∧ F.coxReidParametrization

theorem fisher_metric_closed_from_evidence (F : FisherMetricPackage) (E : FisherMetricEvidence F) : FisherMetricClosed F := by
  exact And.intro E.positiveDefiniteClosed (And.intro E.smoothInParametersClosed E.coxReidParametrizationClosed)

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse