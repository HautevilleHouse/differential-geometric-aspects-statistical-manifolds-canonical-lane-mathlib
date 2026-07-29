import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

structure StatisticalSpace where
  carrier : Type
  sigmaAlgebra : Set (Set carrier)
  familyOfMeasures : {μ : Set (carrier → ℝ)} -- placeholder

structure StatisticalManifold (S : StatisticalSpace) where
  parameterSpace : Type
  chart : S.carrier → parameterSpace
  metricTensor : parameterSpace → ℝ → ℝ
  connection : parameterSpace → (ℝ → ℝ) → (ℝ → ℝ) → ℝ
  fisherInformationNonDegenerate : Prop
  torsionFree : Prop
  curvatureVanishes : Prop
  metricCompatible : Prop

structure StatisticalAdmittedObject where
  space : StatisticalSpace
  manifold : StatisticalManifold space
  dimFinite : Prop
  exponentialFamily : Prop
  conclusion : dimFinite ∧ exponentialFamily

def StatisticalWitnessClosed (O : StatisticalAdmittedObject) : Prop :=
  O.dimFinite ∧ O.exponentialFamily

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse