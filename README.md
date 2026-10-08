# Évaluation objective de la qualité d'image en radiologie interventionnelle : quelles métriques ?

Luis Ammour, Hubert Desal (CHU de Nantes)
Journées Francophones de Radiologie Diagnostique et Interventionnelle, Paris, 8 octobre 2026

Sous-titre : *Du bruit au mouvement : mettre le temps dans la qualité image.*

## Contenu

- `JFR2026_Ammour_metriques_RI.pdf` : les diapositives présentées.
- `src/` : sources LaTeX (Beamer, LuaLaTeX). `jfr2026.tex` contient les diapositives, `jfr2026.sty` les macros propres à l'exposé, `commun/` le modèle de présentation et les polices (Poppins, Inter, Noto Sans Math, licence OFL).
- `references.bib` : bibliographie biblatex. Les champs `note` sont des fiches de lecture de travail.
- `figures/` : figures des diapositives. Les figures `beta_icono`, `disque_icono`, `mobile_icono` et `nps_icono` sont issues des mesures faites au CHU de Nantes sur un Siemens Artis Icono le 6 octobre 2026 (méthode de Konst et al. 2021). `nema_roue_lag.png`, `disque_monnin.png` et `dqe_friedman.png` sont reproduites de publications citées sur les diapositives (AAPM TG-272, Monnin et al. 2021, Friedman et Cunningham 2010) et restent la propriété de leurs auteurs et éditeurs.

## Compilation

```bash
./build.sh          # latexmk : lualatex + biber → build/jfr2026.pdf
./build.sh clean    # supprime build/
```

Aucune police système n'est requise : les polices sont dans `src/commun/polices/` et déclarées à LaTeX par `.latexmkrc`. Testé avec TeX Live 2026 (LuaLaTeX, biblatex, biber).

## Références principales

- Konst B et al. *Novel method to determine recursive filtration and noise reduction in fluoroscopic imaging – a comparison of four different vendors.* J Appl Clin Med Phys 2021;22(1):281–292.
- Monnin P et al. *A novel method to assess the spatiotemporal image quality in fluoroscopy.* Phys Med Biol 2021;66:245001.
- Friedman SN, Cunningham IA. *A spatio-temporal detective quantum efficiency and its application to fluoroscopic systems.* Med Phys 2010;37(11):6061–6069.
- Lin P-JP et al. *AAPM Task Group Report 272: Comprehensive acceptance testing and evaluation of fluoroscopy imaging systems.* Med Phys 2022;49(4):e1–e49.
- Trianni A et al. *EFOMP Protocol: Quality Control of Dynamic X-Ray Imaging Systems.* EFOMP, 2024.

La liste complète est sur les deux dernières diapositives.

## Licence

Les diapositives et leur texte sont sous licence [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.fr) : réutilisation libre avec attribution (« L. Ammour, H. Desal, CHU de Nantes, JFR 2026 »). Les sources LaTeX et le modèle de présentation sont sous la même licence. Les polices sont sous licence OFL. Les figures reproduites de publications (`nema_roue_lag.png`, `disque_monnin.png`, `dqe_friedman.png`, `dqe_friedman_t.png`) et les logos du CHU de Nantes et des JFR sont exclus de cette licence et restent soumis aux droits de leurs titulaires.

## Contact

luis.ammour@chu-nantes.fr
