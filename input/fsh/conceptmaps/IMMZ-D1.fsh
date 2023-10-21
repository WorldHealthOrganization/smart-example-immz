
Instance:     IMMZD1ConceptMap
InstanceOf:   ConceptMap
Description:  "Mapping to and from IMMZ.D1 Data Dictionary to other codesystems."
Usage:        #definition

* name = "IMMZ_D1_ConceptMap"
* title = "ConceptMap to and from IMMZ.D1 DataElements"
* status = #active
* experimental = false
* date = "2023-08-09"

* group[+]
  * source = Canonical(IMMZ.D1)
  * target = $ICD11
  * insert ElementMap(DE88, 1B1Z, relatedto)
  * insert ElementMap(DE11, 1C62.Z, equivalent)
  * insert ElementMap(DE13, 1H0Z, equivalent)
  * insert ElementMap(DE40, 3A51, equivalent)
  * insert ElementMap(DE16, 4B4Z, wider)
  * insert ElementMap(DE15, KA21.4, equivalent)
  * insert ElementMap(DE89, QA02.0, relatedto)
  * insert ElementMap(DE12, QA02.Y, relatedto)
  * insert ElementMap(DE82, QA48.1, wider)
  * insert ElementMap(DE90, QC60, wider)
  * insert ElementMap(DE70, XM18Y8, equivalent)
  * insert ElementMap(DE69, XM2280, equivalent)
  * insert ElementMap(DE64, XM33K4, wider)
  * insert ElementMap(DE85, XM3KQ4, wider)
  * insert ElementMap(DE63, XM3SF6, wider)
  * insert ElementMap(DE54, XM47S0, equivalent)
  * insert ElementMap(DE36, XM5V19, equivalent)
  * insert ElementMap(DE37, XM79H3, equivalent)
  * insert ElementMap(DE86, XM7PF6, wider)
  * insert ElementMap(DE9, XT0S, equivalent)

* group[+]
  * source = $ICD11
  * target = Canonical(IMMZ.D1)
  * insert ElementMap(1B1Z, DE88, relatedto)
  * insert ElementMap(1C62.Z, DE11, equivalent)
  * insert ElementMap(1H0Z, DE13, equivalent)
  * insert ElementMap(3A51, DE40, equivalent)
  * insert ElementMap(4B4Z, DE16, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(KA21.4, DE15, equivalent)
  * insert ElementMap(QA02.0, DE89, relatedto)
  * insert ElementMap(QA02.Y, DE12, relatedto)
  * insert ElementMap(QA48.1, DE82, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(QC60, DE90, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(XM18Y8, DE70, equivalent)
  * insert ElementMap(XM2280, DE69, equivalent)
  * insert ElementMap(XM33K4, DE64, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(XM3KQ4, DE85, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(XM3SF6, DE63, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(XM47S0, DE54, equivalent)
  * insert ElementMap(XM5V19, DE36, equivalent)
  * insert ElementMap(XM79H3, DE37, equivalent)
  * insert ElementMap(XM7PF6, DE86, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(XT0S, DE9, equivalent)
  
* group[+]
  * source = Canonical(IMMZ.D1)
  * target = $LNC
  * insert ElementMap(DE90, 10157-6, relatedto)
  * insert ElementMap(DE85, 27415-9, wider)
  * insert ElementMap(DE86, 39263-9, equivalent)
  * insert ElementMap(DE88, 45241-7, relatedto)
  * insert ElementMap(DE11, 45683-0, equivalent)
  * insert ElementMap(DE10, 55277-8, equivalent)
  * insert ElementMap(DE82, 63895-7, wider)
  * insert ElementMap(DE15, 76517-2, equivalent)
  * insert ElementMap(DE9, 82810-3, equivalent)
  * insert ElementMap(DE29, 8339-4, equivalent)
  * insert ElementMap(DE16, 96381-9, relatedto)
  * insert ElementMap(DE92, 96381-9, relatedto)

// * group[+]
//   * source = $LNC
//   * target = Canonical(IMMZ.D1)
//   * insert ElementMap(10157-6, DE90, relatedto)
  // * insert ElementMap(27415-9, DE85, narrower)
  // * element[=].target[=].comment = "The source concept is more specific than the target"
  // * insert ElementMap(39263-9, DE86, equivalent)
  // * insert ElementMap(45241-7, DE88, relatedto)
  // * insert ElementMap(45683-0, DE11, equivalent)
  // * insert ElementMap(55277-8, DE10, equivalent)
  // * insert ElementMap(63895-7, DE82, narrower)
  // * element[=].target[=].comment = "The source concept is more specific than the target"
  // * insert ElementMap(76517-2, DE15, equivalent)
  // * insert ElementMap(82810-3, DE9, equivalent)
  // * insert ElementMap(8339-4, DE29, equivalent)
  // * insert ElementMap(96381-9, DE16, relatedto)
  // * insert ElementMap(96381-9, DE92, relatedto)


* group[+]
  * source = Canonical(IMMZ.D1)
  * target = $SCT
  * insert ElementMap(DE88, 10828004, wider)
  * insert ElementMap(DE86, 28163009, equivalent)
  * insert ElementMap(DE85, 68311008, equivalent)
  * insert ElementMap(DE82, 69840006, equivalent)
  * insert ElementMap(DE9, 77386006, equivalent)
  * insert ElementMap(DE12, 165815009, equivalent)
  * insert ElementMap(DE11, 165816005, equivalent)
  * insert ElementMap(DE89, 260385009, wider)
  * insert ElementMap(DE13, 261665006, wider)
  * insert ElementMap(DE10, 278977008, equivalent)
  * insert ElementMap(DE16, 370388006, equivalent)
  * insert ElementMap(DE15, 395507008, equivalent)
  * insert ElementMap(DE40, 417357006, equivalent)
  * insert ElementMap(DE90, 438998000, wider)
  * insert ElementMap(DE36, 871740006, equivalent)


// * group[+]
//   * source = $SCT
//   * target = Canonical(IMMZ.D1)
//   * insert ElementMap(10828004, DE88, narrower)
//   * element[=].target[=].comment = "The source concept is more specific than the target"
//   * insert ElementMap(28163009, DE86, equivalent)
//   * insert ElementMap(68311008, DE85, equivalent)
//   * insert ElementMap(69840006, DE82, equivalent)
//   * insert ElementMap(77386006, DE9, equivalent)
//   * insert ElementMap(165815009, DE12, equivalent)
//   * insert ElementMap(165816005, DE11, equivalent)
//   * insert ElementMap(260385009, DE89, narrower)
//   * element[=].target[=].comment = "The source concept is more specific than the target"
//   * insert ElementMap(261665006, DE13, narrower)
//   * element[=].target[=].comment = "The source concept is more specific than the target"
//   * insert ElementMap(278977008, DE10, equivalent)
//   * insert ElementMap(370388006, DE16, equivalent)
//   * insert ElementMap(395507008, DE15, equivalent)
//   * insert ElementMap(417357006, DE40, equivalent)
//   * insert ElementMap(438998000, DE90, narrower)
//   * element[=].target[=].comment = "The source concept is more specific than the target"
//   * insert ElementMap(871740006, DE36, equivalent)
