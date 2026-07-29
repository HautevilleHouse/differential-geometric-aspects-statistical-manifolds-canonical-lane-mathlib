import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

structure FisherInformationMetric where
  parameterSpace : Type u
  metricTensor : Type v
  positiveDefinite : Prop
  invariantUnderReparam : Prop
  cramerRaoBound : Prop

structure FisherInformationMetricEvidence (F : FisherInformationMetric) where
  positiveDefiniteClosed : F.positiveDefinite
  invariantUnderReparamClosed : F.invariantUnderReparam
  cramerRaoBoundClosed : F.cramerRaoBound

def FisherInformationMetricClosed (F : FisherInformationMetric) : Prop :=
  F.positiveDefinite ∧ F.invariantUnderReparam ∧ F.cramerRaoBound

theorem fisher_information_metric_closed_from_evidence
    (F : FisherInformationMetric) (E : FisherInformationMetricEvidence F) :
    FisherInformationMetricClosed F := by
  exact And.intro E.positiveDefiniteClosed
    (And.intro E.invariantUnderReparamClosed E.cramerRaoBoundClosed)

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse