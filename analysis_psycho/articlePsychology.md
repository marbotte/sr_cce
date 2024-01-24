Articles in psychology journals
================
Marius Bottin
2024-01-22

- [1 Herrick2022 ( LR )](#1-herrick2022--lr-)
  - [1.1 abstract](#11-abstract)
  - [1.2 Population](#12-population)
  - [1.3 Objective/questions](#13-objectivequestions)
  - [1.4 Intervention](#14-intervention)
  - [1.5 Methods/Results](#15-methodsresults)
  - [1.6 Outcomes](#16-outcomes)
  - [1.7 Conclusions](#17-conclusions)
- [2 Jacobson2017 ( MB )](#2-jacobson2017--mb-)
  - [2.1 abstract](#21-abstract)
  - [2.2 Population](#22-population)
  - [2.3 Objective/questions](#23-objectivequestions)
  - [2.4 Intervention](#24-intervention)
  - [2.5 Methods/Results](#25-methodsresults)
  - [2.6 Outcomes](#26-outcomes)
  - [2.7 Conclusions](#27-conclusions)
- [3 Lombardi2013 ( ABP )](#3-lombardi2013--abp-)
  - [3.1 abstract](#31-abstract)
  - [3.2 Population](#32-population)
  - [3.3 Objective/questions](#33-objectivequestions)
  - [3.4 Intervention](#34-intervention)
  - [3.5 Methods/Results](#35-methodsresults)
  - [3.6 Outcomes](#36-outcomes)
  - [3.7 Conclusions](#37-conclusions)
- [4 Markowitz2018 ( LR )](#4-markowitz2018--lr-)
  - [4.1 abstract](#41-abstract)
  - [4.2 Population](#42-population)
  - [4.3 Objective/questions](#43-objectivequestions)
  - [4.4 Intervention](#44-intervention)
  - [4.5 Methods/Results](#45-methodsresults)
  - [4.6 Outcomes](#46-outcomes)
  - [4.7 Conclusions](#47-conclusions)
- [5 McGowan2022 ( SB )](#5-mcgowan2022--sb-)
  - [5.1 abstract](#51-abstract)
  - [5.2 Population](#52-population)
  - [5.3 Objective/questions](#53-objectivequestions)
  - [5.4 Intervention](#54-intervention)
  - [5.5 Methods/Results](#55-methodsresults)
  - [5.6 Outcomes](#56-outcomes)
  - [5.7 Conclusions](#57-conclusions)
- [6 Meya2018 ( SB )](#6-meya2018--sb-)
  - [6.1 abstract](#61-abstract)
  - [6.2 Population](#62-population)
  - [6.3 Objective/questions](#63-objectivequestions)
  - [6.4 Intervention](#64-intervention)
  - [6.5 Methods/Results](#65-methodsresults)
  - [6.6 Outcomes](#66-outcomes)
  - [6.7 Conclusions](#67-conclusions)
- [7 Nakamura2019 ( ABP )](#7-nakamura2019--abp-)
  - [7.1 abstract](#71-abstract)
  - [7.2 Population](#72-population)
  - [7.3 Objective/questions](#73-objectivequestions)
  - [7.4 Intervention](#74-intervention)
  - [7.5 Methods/Results](#75-methodsresults)
  - [7.6 Outcomes](#76-outcomes)
  - [7.7 Conclusions](#77-conclusions)
- [8 Saribaş2016 ( JGOP )](#8-saribaş2016--jgop-)
  - [8.1 abstract](#81-abstract)
  - [8.2 Population](#82-population)
  - [8.3 Objective/questions](#83-objectivequestions)
  - [8.4 Intervention](#84-intervention)
  - [8.5 Methods/Results](#85-methodsresults)
  - [8.6 Outcomes](#86-outcomes)
  - [8.7 Conclusions](#87-conclusions)
- [9 Schubatzky2022 ( ABP )](#9-schubatzky2022--abp-)
  - [9.1 abstract](#91-abstract)
  - [9.2 Population](#92-population)
  - [9.3 Objective/questions](#93-objectivequestions)
  - [9.4 Intervention](#94-intervention)
  - [9.5 Methods/Results](#95-methodsresults)
  - [9.6 Outcomes](#96-outcomes)
  - [9.7 Conclusions](#97-conclusions)
- [10 Sellmann2013a ( SB )](#10-sellmann2013a--sb-)
  - [10.1 abstract](#101-abstract)
  - [10.2 Population](#102-population)
  - [10.3 Objective/questions](#103-objectivequestions)
  - [10.4 Intervention](#104-intervention)
  - [10.5 Methods/Results](#105-methodsresults)
  - [10.6 Outcomes](#106-outcomes)
  - [10.7 Conclusions](#107-conclusions)
- [11 Stevenson2018 ( LR )](#11-stevenson2018--lr-)
  - [11.1 abstract](#111-abstract)
  - [11.2 Population](#112-population)
  - [11.3 Objective/questions](#113-objectivequestions)
  - [11.4 Intervention](#114-intervention)
  - [11.5 Methods/Results](#115-methodsresults)
  - [11.6 Outcomes](#116-outcomes)
  - [11.7 Conclusions](#117-conclusions)
- [12 Veijalainen2013 ( BQ )](#12-veijalainen2013--bq-)
  - [12.1 abstract](#121-abstract)
  - [12.2 Population](#122-population)
  - [12.3 Objective/questions](#123-objectivequestions)
  - [12.4 Intervention](#124-intervention)
  - [12.5 Methods/Results](#125-methodsresults)
  - [12.6 Outcomes](#126-outcomes)
  - [12.7 Conclusions](#127-conclusions)
- [13 Walsh2018 ( MB )](#13-walsh2018--mb-)
  - [13.1 abstract](#131-abstract)
  - [13.2 Population](#132-population)
  - [13.3 Objective/questions](#133-objectivequestions)
  - [13.4 Intervention](#134-intervention)
  - [13.5 Methods/Results](#135-methodsresults)
  - [13.6 Outcomes](#136-outcomes)
  - [13.7 Conclusions](#137-conclusions)

``` r
require(openxlsx)&require(knitr)&require(kableExtra)
```

    ## Loading required package: openxlsx

    ## Loading required package: knitr

    ## Loading required package: kableExtra

    ## [1] TRUE

``` r
completeFTS <- read.xlsx("../../screening/fullTextScreening/fullTextScreening.xlsx")
names(loadWorkbook("../../extraction/20240116_journals.xlsx"))
```

    ##  [1] "Guidance for search strategy" "Search strategy"             
    ##  [3] "Feuille 3"                    "Inclusion-exclusion criteria"
    ##  [5] "searches"                     "extraction "                 
    ##  [7] "Tableau croisé dynamique 4"   "Tableau croisé dynamique 3"  
    ##  [9] "Tableau croisé dynamique 1"   "ColorCode"

``` r
rawExtract<-read.xlsx("../../extraction/20240116_journals.xlsx",sheet = "extraction ",startRow = 2)
extract<-rawExtract
#table(extract$`Validation.Mitigation/adaptation`)
tabToWork<-extract[order(extract$id),]
toKeepPsy<-apply(sapply(tabToWork[,grep("journal.discipline.*",colnames(tabToWork),ignore.case = T)],grepl,pattern="psychology",ignore.case = T),1,any)
tabToWork<-tabToWork[toKeepPsy,]
```

``` r
for(i in 1:nrow(tabToWork))
{
  ref<-tabToWork$id[i]
  title<-tabToWork$referencia[i]
  person<-tabToWork$codifico[i]
  abstract<-completeFTS[completeFTS$abbrev==ref,"abstract"]
  knowledge<-tabToWork$knowledge[i]
  awareness<-tabToWork$awareness[i]
  intention<-tabToWork$intention[i]
  emotions<-tabToWork$emotion[i]
  action<-tabToWork$action[i]
  habit<-tabToWork$habit[i]
  other<-tabToWork$Other[i]
  conclusions<-tabToWork$Conclusiones.generales[i]
  notes<-tabToWork$Main.ideas.to.keep.for.the.synthesis[i]
  # cat("#", ref,"\n\n",
  #     "*title*:", title,"\n\n",
  #     "*person*:", person,"\n\n",
  #     "*abstract*:", abstract,"\n\n",
  #     ifelse(is.na(knowledge),"",paste("*knowledge*:", knowledge,"\n\n")),
  #     ifelse(is.na(awareness),"",paste("*awareness*:", awareness,"\n\n")),
  #     ifelse(is.na(intention),"",paste("*intention*:", intention,"\n\n")),
  #     ifelse(is.na(emotions),"",paste("*emotions*:", emotions,"\n\n")),
  #     ifelse(is.na(action),"",paste("*action*:", action,"\n\n")),
  #     ifelse(is.na(habit),"",paste("*habit*:", habit,"\n\n")),
  #     ifelse(is.na(other),"",paste("*other*:", other,"\n\n"))
  # )
  cat("#", ref, "(",person,")\n\n")
  
  cat("**title**",tabToWork$referencia[i],"\n\n")
  
  cat("##","abstract","\n\n")
  cat(abstract,"\n\n")
  cat("## Population\n\n")
  TAB<-na.omit(t(tabToWork[i,c("Countries.STUDY","TARGETED.SAMPLE","SAMPLE","sample.size","age_min","age_max","mean.age","urban.vs.rural")]))
  TAB[,1]<-gsub("\\[","((",TAB[,1]);TAB[,1]<-gsub("\\]","))",TAB[,1])
  cat(kable(TAB,col.names = c()))
  cat("\n\n")
  cat(paste("##","Objective/questions\n\n"))
  TAB<-t(tabToWork[i,c("Objectives","Questions")])
  TAB[,1]<-gsub("\\[","((",TAB[,1]);TAB[,1]<-gsub("\\]","))",TAB[,1])
  #TAB[,1]<-gsub("\\[","\\\\[",TAB[,1])
  #TAB[,1]<-gsub("([0-9])\\.","\\1",TAB[,1])
  cat("**Objective**:\n\n",TAB["Objectives",],"\n\n")
  cat("**Questions**:\n\n",TAB["Questions",],"\n\n")
  cat("\n\n")
  cat("## Intervention\n\n")
  TAB<-t(tabToWork[i,c("Curricular/Extracurricular","Outdoor/Indoor/Both","Type.of.intervention","Descripcion.de.intervención")])
  TAB[,1]<-gsub("\\[","((",TAB[,1]);TAB[,1]<-gsub("\\]","))",TAB[,1])
  #cat(kable(TAB,col.names = c()))
  cat("**Curricular/Extra**:",TAB[1,],"\n\n")
  cat("**Indoor/Outdoor**:",TAB[2,],"\n\n")
  cat("**Type**:",TAB[3,],"\n\n")
  cat("**Description**:",TAB[4,],"\n\n")
  
  
  cat("\n\n")
  cat("## Methods/Results\n\n")
  TAB<-t(tabToWork[i,c("Modalidad.de.recolección.de.datos.para.la.evaluación.del.efecto","Analysis.technique","Resultados.obtenidos.por.cada.outcome","Which.aspect.has.improved.or.not?")])
  TAB[,1]<-gsub("\\[","((",TAB[,1]);TAB[,1]<-gsub("\\]","))",TAB[,1])
  TAB[,1]<-gsub("^- ","",TAB[,1])
  TAB[,1]<-gsub("\\[","((",TAB[,1]);TAB[,1]<-gsub("\\]","))",TAB[,1])
  #cat(kable(TAB,col.names = c()))
  cat("**Data**:",TAB[1,],"\n\n")
  cat("**Analysis**:",TAB[2,],"\n\n")
  cat("**Results**:",TAB[3,],"\n\n")
  cat("**Improved?**:",TAB[4,],"\n\n")
  cat("\n\n")
  
  cat("## Outcomes\n\n")
  
  cat(ifelse(is.na(knowledge),"\n",paste("**knowledge**:",knowledge,"(*Worked?*:",tabToWork$`knowledge.did.it.work?`[i], ")\n\n")))
  cat(ifelse(is.na(awareness),"\n",paste("**awareness**:", awareness,"(*Worked?*:",tabToWork$`awareness.did.it.work?`[i],")\n\n")))
  cat(ifelse(is.na(intention),"\n",paste("**intention**:", intention,"(*Worked?*:",tabToWork$`intention.,.did.it.work?`[i],")\n\n")))
  cat(ifelse(is.na(emotions),"\n",paste("**emotions**:", emotions,"(*Worked?*:",tabToWork$`emotion,.did.it.work?`[i],")\n\n")))
  cat(ifelse(is.na(action),"\n",paste("**action**:", action,"(*Worked?*:",tabToWork$`action,.did.it.work?`[i],")\n\n")))
  cat(ifelse(is.na(habit),"\n",paste("**habit**:", habit,"(*Worked?*:",tabToWork$`habit,.did.it.work?`[i],")\n\n")))
  cat(ifelse(is.na(other),"\n",paste("**other**:", other,"(*Worked?*:",tabToWork$`Other,.did.it.work`[i],")\n\n")))
  
  cat("## Conclusions\n\n")
  
  TAB<-t(tabToWork[i,c("Conclusiones.generales","Main.ideas.to.keep.for.the.synthesis")])
  #cat(kable(TAB,col.names = c()))
  cat("**Conclusions**:",TAB[1,],"\n\n")
  cat("**Message to keep:**:",TAB[2,],"\n\n")
  cat("\n\n")
}
```

# 1 Herrick2022 ( LR )

**title** Through the eyes of a child: exploring and engaging elementary
students’ climate conceptions through photovoice

## 1.1 abstract

Objectives: The largest Global Climate Strike in history was led and
organized by youth, demonstrating students consider climate change a key
issue impacting their futures. However, researchers know little about
the climate change knowledge and experiences elementary students bring
to the classroom. We aimed to engage and explore elementary students’
ideas about how they see climate change in their everyday lives using a
combination of science and arts-based pedagogies.

## 1.2 Population

<table>
<tbody>
<tr>
<td style="text-align:left;">

Countries.STUDY

</td>
<td style="text-align:left;">

United States

</td>
</tr>
<tr>
<td style="text-align:left;">

TARGETED.SAMPLE

</td>
<td style="text-align:left;">

students

</td>
</tr>
<tr>
<td style="text-align:left;">

SAMPLE

</td>
<td style="text-align:left;">

5th grade students

</td>
</tr>
<tr>
<td style="text-align:left;">

sample.size

</td>
<td style="text-align:left;">

22.0

</td>
</tr>
<tr>
<td style="text-align:left;">

urban.vs.rural

</td>
<td style="text-align:left;">

urban

</td>
</tr>
</tbody>
</table>

## 1.3 Objective/questions

**Objective**:

Transformative experience consisting in: *Knowledge: instruction
(meaningful lessons) + deeper knowledge construction (iterate on their
initial conceptions in both individual and social ways) + transfer of
content knowledge to the real world *Emotions: shift negative emotions
and support students’ in constructing hope around CC issues by
positioning them as capable pro­blem posers who are able to affect change
in their communities. Intervention

**Questions**:

NA

## 1.4 Intervention

**Curricular/Extra**: Curricular

**Indoor/Outdoor**: Outdoor

**Type**: Arts based pedagogy (Photovoice)/Place-based approach

**Description**: (1) View science in the world through visual imagery
(Photovoice) and re seeing it through scafolded classroom interactions
(interviews and a grand conversation).

## 1.5 Methods/Results

**Data**: Qualitative data: photographs, reflections, transcriptions of
interviews, small group presentations and whole class grand
conversation. Quatitatively: Post-TE survey shortened and adapted for
5th graders

**Analysis**: Structured and a priori coding of transcripts from
interviews of information that represented portential instances of
Transformative Experience and its based on three dimensions (motivated
use, expansion perception and experiential value). To understand how
students see, experience, and understand CC, we initially reviewed five
cases of student data over two meetings. Here, a case includes one
student’s “top 5” photo­ graphs, their SHOWeD reflections, and interview
tran­script. To understand how each student represented CC, we began by
open coding their “top 5” pictures (Saldaña, 2013; Strauss & Corbin,
1990). These codes provided initial insights into how they represented
CC and were followed up with open and in vivo coding of their SHOWeD
reflections. Finally, these same coding techniques were used with
interview transcripts to expand, clarify, and adjust our initial
inferences.

**Results**: Cognition: Making deeper connetions between C.C: and their
everyday lifes and applying knowledge to local problems Emotions:
Building constructive hope and a sense of agency to address their
community issues

**Improved?**: Cognition: Making deeper connetions between C.C: and
their everyday lifes Emotions: Building constructive hope and a sense of
agency to address their community issues

## 1.6 Outcomes

**knowledge**: . Thus, as students became more confident in their
ability to describe their ideas about CC, they engaged in more
generative and applied thinking about how they could use this knowledge
to support their communities - (*Worked?*: yes )

**awareness**: Better understanding of: (1) the collective role human
beings have in being responsible for what is happening to the planet (2)
the reality of limited resources that the environment provides and how
that should promote protection and sustainability. (*Worked?*: yes )

**intention**: as student’s drew deeper connections to human’s role in
CC, they referred to a newfound responsibility, and possible future
steps humans could take to repair the harm. A sense of and agentic
engagement with CC topics (Sinatra et al., 2015). (*Worked?*: yes )

**emotions**: Overall, we found that the photovoice unit fostered a TE
and supported shifting negative emotions for stu­dents by creating
opportunities for deeper affective, cognitive, and agentic engagement
with CC topics (Sinatra et al., 2015). (*Worked?*: yes )

## 1.7 Conclusions

**Conclusions**: Authors argue that the photovoice experience
contributed to making science teaching a transformative experience

**Message to keep:**: This study attempt to integrate in an arts-based
intervention cognitive and emotional processes. It reports on
qualitative analysis, initially with the intention of evaluating where
children are at in relation to climate change, and the following
children´s trajectories as the progress through the 8 week science unit.
Also, authors measured using a Transformative Experience scale
children´s reports POST intervention.

# 2 Jacobson2017 ( MB )

**title** Designs for learning about climate change as a complex system

## 2.1 abstract

This paper reports on a study in which students used agent-based
computer models to learn about complex systems ideas of relevance to
understanding climate change. The experimental condition used a
Productive Failure (PF) learning design in which ninth grade students
initially worked with agent-based computer models to solve challenge
problems followed by teacher instruction about targeted climate and
complexity ideas. In contrast, the comparison condition employed a
Direct Instruction (DI) learning design in which the teacher instruction
was provided initially, followed by the students working on the same
computer models and challenge problems as the experimental group. The
students in the PF group scored significantly higher on the post-test on
measures of climate and complex systems explanatory knowledge and near
and far knowledge transfer. Theoretical and practical implications of
these findings are considered. (C) 2017 Elsevier Ltd. All rights
reserved.

## 2.2 Population

<table>
<tbody>
<tr>
<td style="text-align:left;">

Countries.STUDY

</td>
<td style="text-align:left;">

Australia

</td>
</tr>
<tr>
<td style="text-align:left;">

TARGETED.SAMPLE

</td>
<td style="text-align:left;">

students

</td>
</tr>
<tr>
<td style="text-align:left;">

SAMPLE

</td>
<td style="text-align:left;">

students in year Nine

</td>
</tr>
<tr>
<td style="text-align:left;">

sample.size

</td>
<td style="text-align:left;">

110.0

</td>
</tr>
<tr>
<td style="text-align:left;">

mean.age

</td>
<td style="text-align:left;">

14.0

</td>
</tr>
<tr>
<td style="text-align:left;">

urban.vs.rural

</td>
<td style="text-align:left;">

urban

</td>
</tr>
</tbody>
</table>

## 2.3 Objective/questions

**Objective**:

We conducted a study that contrasted and compared the efficacy of a PF
((Productive Failure)) design versus a DI ((Direct Instruction)) design
to help students deeply learnconceptual knowledge about climate ideas
and complex systems.

**Questions**:

RQ1: Are PF and DI treatment conditions equally effective for students
to learn declarative and explanatory knowledge1 about climate and
complex systems ideas? RQ2: Are PF and DI treatment conditions equally
effective for fostering the ability to use the targeted climate and
complexity knowledge for solving two classes of new, not previously
studied, problems? The first class is near transfer, which is solving
new problems in the same domain (e.g., climate problems or complex
systems problems), and the second class is far transfer, which is
solving new problems in a different domain

## 2.4 Intervention

**Curricular/Extra**: Curricular

**Indoor/Outdoor**: Indoor

**Type**: Lessons, computer assisted modeling

**Description**: 6 days: - Pre test - Feedback in dynamic systems.
Climate: global temperature, greenhouse effect, cloud cover. Complex
systems: modeling of the ant foraging model - Emergence. Climate: Wind
and storm model. Complex systems: Birds flocking model - Dynamic
equilibrium. Climate: Carbon cycle model. Complex systems: Wolf-sheep
predation model - Tipping points and positive feedback. Climate: climate
model with water feedback. Complex systems: forest fire model - Post
test For every pedagogical activities, the class correspond to a teacher
lecture (15-20 min), an example of complex system model (15-20 min), and
a climate and complex systems models (10-20 min) In the Productive
Failure treatment, the lecture takes place after complex system modeling
activities, in the Direct Instruction treatment, before the modeling
activity.

## 2.5 Methods/Results

**Data**: Qualitative open-ended questions concerning four aspects of
climate and complex system knowledge in a pre-post survey: - declarative
knowledge (simple knowledge about concepts of the climate system) -
explanatory knowledge (explaining climate processes) - near transfer
problem (concerning climate system) - far transfer problem (concerning
complex system in another domain) The answers were coded on a 1-4 scale
describing correctness of knowledge and reasoning, and used in
quantitative analyses

**Analysis**: The students’ performance was assessed with a marking
rubric that consisted of a four-point coding scheme. - two-ways
ANOVA/ANCOVA with follow-up t-test (treatment group + experience of
teachers vs declarative knowledge/explanatory knowledge/near
transfer/far transfer) - qulitative analysis of class observations

**Results**: declarative knowledge scores for the two treatment groups
were statistically equivalent in terms of their respective knowledge
gains from pre- test to post-test and there were no significant teacher
effects. (F(1,105) 1⁄4 1.652, p \> 0.1, h2 p 1⁄4 0.015) - For climate
explanatory knowledge, a two-way ANOVA revealed that there was a
significant main effect of treatment group and a significant main effect
of teacher experience at post-test favored the high experience
teachers. - For complex systems explanatory knowledge, a two-way ANCOVA
found that there was a significant main effect for the experimental
treatment group (F(1,105) 1⁄4 21.126, p \< 0.001, h2 p 1⁄4 0.167): while
the students in each of the groups scored higher with experienced
teachers compared to early career teachers, the PF group scored higher
overall than the DI group. - being in the PF treatment had a significant
positive impact on the near transfer scores compared to the DI
treatment. - being in the experimental PF group and having an
experienced teacher each respectively had a positive influence on far
transfer knowledge test scores, but that there was not a statistically
significant special benefit of having both.

**Improved?**: All aspects (declarative knowledge, explanatory
knowledge), resolution of near transfer and far transfer problems
increased in the 2 pedagogical treatment (there are distincts effect of
the teacher experience and the pedagogical treatments)

## 2.6 Outcomes

**knowledge**: - correctness in declarative knowledge concerning climate
system (e.g. relating biosphere to carbon cycle) - correctness in
explanatory knowledge concerning climate system (e.g. behaviour of
climate phenomena) - ability to use the complex system ideas to resolve
a near transfer problem concerning the complex climate system (butterfly
effect) (*Worked?*: Yes )

**other**: - ability to resolve a far transfer problem, using complex
system notions in a different domain (not climate) (*Worked?*: Yes )

## 2.7 Conclusions

**Conclusions**: The Productive Failure pedagogical design (presenting a
problem to the students before the lecture) did not do better than the
Direct Instruction (lecture first) design in terms of declarative
knowledge (simple conceptual knowledge about the climate system), but it
performed better in terms of explanatory knowledge (explaining processes
in the climate system), near transfer problem (concerning the climate
system) resolution and far transfer (in another domain) problems. The
authors note that there are 2 explanations: - social perspective: PF
treatment caused more engagement and more collaboration between students
and with the teachers (more questions) - cognitive perspective: the
lecture after the problem allows to activate cognitive processes of
knowledge assembly and shema abstraction

**Message to keep:**: A very interesting study which shows that
different pedagogical designs with exactly the same activities but a
different perspective (problem resolving before lecture) may have
important effect on the capacity of students to use complex system
concepts to better understand the climate. What is also interesting is
that the author show that this may have effect particularly in the
capacity of understanding complex problem even beyond the only domain of
climate.

# 3 Lombardi2013 ( ABP )

**title** Plausibility reappraisals and shifts in middle school
students’ climate change conceptions

## 3.1 abstract

Plausibility is a central but under-examined topic in conceptual change
research. Climate change is an important soda-scientific topic; however,
many view human-induced climate change as implausible. When learning
about climate change, students need to make plausibility judgments but
they may not be sufficiently critical or reflective. The purpose of this
study was to examine how students’ plausibility judgments and knowledge
about human-induced climate change transform during instruction
promoting critical evaluation. The results revealed that treatment group
participants who engaged in critical evaluation experienced a
significant shift in their plausibility judgments toward the
scientifically accepted model of human-induced climate change. This
shift was accompanied by significant conceptual change postinstruction
that was maintained after a six-month delay. A comparison group who
experienced a climate change activity that is part of their normal
curriculum did not experience statistically significant changes. (c)
2013 Elsevier Ltd. All rights reserved.

## 3.2 Population

<table>
<tbody>
<tr>
<td style="text-align:left;">

Countries.STUDY

</td>
<td style="text-align:left;">

United States

</td>
</tr>
<tr>
<td style="text-align:left;">

TARGETED.SAMPLE

</td>
<td style="text-align:left;">

students

</td>
</tr>
<tr>
<td style="text-align:left;">

SAMPLE

</td>
<td style="text-align:left;">

grade 7th

</td>
</tr>
<tr>
<td style="text-align:left;">

sample.size

</td>
<td style="text-align:left;">

169.0

</td>
</tr>
<tr>
<td style="text-align:left;">

urban.vs.rural

</td>
<td style="text-align:left;">

urban

</td>
</tr>
</tbody>
</table>

## 3.3 Objective/questions

**Objective**:

NA

**Questions**:

do students’ (a) plausibility perceptions of competing climate change
models and (b) knowledge about this topic change? The instruction
focused on students’ evaluation of two competing models: human-induced
climate change (i.e., the scientifically ac- curate model

## 3.4 Intervention

**Curricular/Extra**: Curricular

**Indoor/Outdoor**: Indoor

**Type**: the model-evidence link (MEL) diagram activity

**Description**: the model-evidence link (MEL) diagram activity to
promote critical evaluation and potential reappraisal of plausibility
judgments about human-induced climate change. On a MEL provided to each
student, participants drew different types of arrows linking evidentiary
data to the two alternative models of climate change - g instruction
promoting critical evaluation

## 3.5 Methods/Results

**Data**: NA

**Analysis**: Multiple Regression Analysis Pre- and Post-tests

**Results**: treatment group participants experienced significant
changes in their perceptions of model plausibility and knowledge of
human-induced climate change after experiencing instruction that
promoted critical evaluation. knowledge change was sustained up to six
months after instruction. The comparison group, which experienced the
regular curriculum, did not show any significant changes in these
variables.

**Improved?**: conocimiento mejoro

## 3.6 Outcomes

**knowledge**: change of perception and knowledge of human-induced
climate change (*Worked?*: yes )

**awareness**: shift toward the scientifically accepted model
(*Worked?*: NA )

## 3.7 Conclusions

**Conclusions**: This study expands our understanding of conceptual
change and specifically helps support the idea that experiencing
conceptual change about human-induced climate change is neither a simple
matter of debunking non-scientific positions nor just learning about the
several lines of evidence that support the scientific model. Rather,
moving toward the scientifically accepted conception that Humans are
altering Earth’s climate may well require connecting evidences to
alternative models, evaluating the strength of these connections with
respect to each alternative, and explicitly reappraising the
plausibility of each alternative

**Message to keep:**: NA

# 4 Markowitz2018 ( LR )

**title** Immersive Virtual Reality Field Trips Facilitate Learning
About Climate Change

## 4.1 abstract

Across four studies, two controlled lab experiments and two field
studies, we tested the efficacy of immersive Virtual Reality (VR) as an
education medium for teaching the consequences of climate change,
particularly ocean acidification. Over 270 participants from four
different learning settings experienced an immersive underwater world
designed to show the process and effects of rising sea water acidity. In
all of our investigations, after experiencing immersive VR people
demonstrated knowledge gains or inquisitiveness about climate science
and in some cases, displayed more positive attitudes toward the
environment after comparing pre- and post-test assessments. The analyses
also revealed a potential post-hoc mechanism for the learning effects,
as the more that people explored the spatial learning environment, the
more they demonstrated a change in knowledge about ocean acidification.
This work is unique by showing distinct learning gains or an interest in
learning across a variety of participants (high school, college
students, adults), measures (learning gain scores, tracking data about
movement in the virtual world, qualitative responses from classroom
teachers), and content (multiple versions varying in length and content
about climate change were tested). Our findings explicate the
opportunity to use immersive VR for environmental education and to drive
information-seeking about important social issues such as climate
change.

## 4.2 Population

<table>
<tbody>
<tr>
<td style="text-align:left;">

Countries.STUDY

</td>
<td style="text-align:left;">

United States

</td>
</tr>
<tr>
<td style="text-align:left;">

TARGETED.SAMPLE

</td>
<td style="text-align:left;">

students

</td>
</tr>
<tr>
<td style="text-align:left;">

SAMPLE

</td>
<td style="text-align:left;">

High school in the West Coast of the United States.

</td>
</tr>
<tr>
<td style="text-align:left;">

sample.size

</td>
<td style="text-align:left;">

19.0

</td>
</tr>
<tr>
<td style="text-align:left;">

age_min

</td>
<td style="text-align:left;">

16.0

</td>
</tr>
<tr>
<td style="text-align:left;">

age_max

</td>
<td style="text-align:left;">

18.0

</td>
</tr>
</tbody>
</table>

## 4.3 Objective/questions

**Objective**:

This is the first of 4 studies, on which authors tested the effect o
different aspects of immersive VR on learning about marine science:
Study 1 tested the physical experience (haptic, auditory, and other
sensory feedback experienced throughout a virtual world). Studies 2,3,4
don´t apply because they were performed with other populations.

**Questions**:

We investigated the eﬀectiveness of immersive VR for learning about
marine science through virtual ﬁeld trips

## 4.4 Intervention

**Curricular/Extra**: Curricular

**Indoor/Outdoor**: Both

**Type**: Mediated learning: Inmersive virtual reality

**Description**: Students participated in activities based on
traditional practices of marine scientists, who dive underwater and
interact with species of ﬂora and fauna to measure biodiversity (Dive
1). Then, they had an inmersive virtual reality experience modeled after
the Ischian Reef in Italy, where naturally occurring carbon dioxide
vents acidify certain areas of the reef and provide scientists with a
window into a future aﬀected by climate change. Then the had another
field physical experience.

## 4.5 Methods/Results

**Data**: Open questionare about ocean acidiﬁcation: (1) What it is (2)
What is the most signiﬁcant cause of ocean acidiﬁcation?, (3) What the
predicted eﬀects of increasing ocean acidiﬁcation (4) How do coral and
other sea creatures build their hard skeletons and shells?, (5) How much
carbon dioxide is absorbed by the planet’s oceans each year?, and (6)
How much has the pH level of the ocean changed since the industrial
revolution?. Responses were coded by expert on a 1-7 scale Attitude or
concern: New Ecological Paradigm (NEP; Dunlap et al., 2000), 7- point
Likert scales, where participants responded to assertions such as “We
are approaching the limit of the number of people the earth can
support,” “Humans were meant to rule over the rest of nature,” and “The
balance of nature is very delicate and easily upset

**Analysis**: Data were analyzed using hierarchical linear mixed models
with a random eﬀect for participant to account for multiple,
non-independent observations by each student.

**Results**: There was knowledge gain from the whole experience and in
particular from the inmersive virtual reality experience

**Improved?**: Knowledge about ocean identification improved after the
VRI, but there were no significant changes in environmrntal concern

## 4.6 Outcomes

**knowledge**: (1) demonstrating knowledge gain about the process and
causes of ocean acidiﬁcation (*Worked?*: yes )

**emotions**: Environmental concern that is, changing attitudes toward
the ocean environment and ocean acidiﬁcation (*Worked?*: no )

## 4.7 Conclusions

**Conclusions**: As expected, overall student knowledge about ocean
acidiﬁcation was low at the beginning of the program. The relatively
stable knowledge gain, weeks after the immersive VR ﬁeld trip,
demonstrates the potential of using this technology to facilitate
learning over time. An initial open-water scuba dive seems to have
increased the eﬀectiveness of the virtual experience, while the exact
mechanism remains unclear and our relatively small sample prevents broad
conclusions to be made from these data.

**Message to keep:**: This is a very robust study, that showed a long
standing effect of an intervention that combines field trips with
virtual immersion.  
THere is not a declaration regarding the educational approach, other
than the use of mediated learning, however, this falls within the
experiential learning category. Authors say :“Our interest in climate
change education stems from the importance of bringing complex issues
closer to people psychologically (Schuldt et al., 2016) and is also
inspired by recent calls for innovative teaching methods to address
environmental concerns (e.g., mobile games; McCright et al., 2013; Wu
and Lee, 2015).”

# 5 McGowan2022 ( SB )

**title** “I now deeply care about the effects humans are having on the
world”: cultivating ecological care and responsibility through complex
systems modelling and investigations

## 5.1 abstract

Objective: Systems thinking can be counterintuitive to everyday ways of
knowing. This can surface doubt around predicted patterns of emergence
in complex systems data, especially as it relates to the current climate
crisis and related justice-oriented solutions. Method: Our study
describes a four-year design-based research project in which we engaged
high school biology students in complex systems modelling to understand
linkages between increasing ocean temperatures and the rate and severity
of disease outbreaks in sea stars. Results: Our findings showed that
students approached climate data with uncertainty and viewed their lives
as separate from the impacts of climate change. Through iterative design
work, youth used authentic data and computational tools to construct
geospatial and causal-loop models of climate-related disease outbreaks
that situated case studies within broader socioecological and
sociotechnical contexts of historic and powered human actions. Through a
speculative design lens, models were transformed from data visualization
tools to mediums for storying and re-storying present and future worlds
for multispecies survival in the face of the climate crisis. Conclusion:
Students shifted their understandings of disease outbreaks from a
technical perspective to a more social and situated lens of care and
responsibility for mitigating the impacts of the climate crisis on human
and more-than-human communities. KEY POINTS What is already known about
this topic: (1) Teachers that cover climate change often focus solely on
technical and data-based aspects during instruction, such as the carbon
cycle and increasing atmospheric CO2 levels, without including the
social and political contexts through which the climate emergency
emerged. (2) Engaging students in meaningful action and problem-solving
creates positive affective outcomes and retains hope in students in the
face of future climate impacts. (3) There is still more that we need to
learn about how to design learning environments that cultivate hope,
agency, and multispecies caring in K-12 contexts. What this topic adds:
(1) We show how complex systems modelling and data visualization can
cultivate multispecies caring and climate action by situating
climate-related phenomena in larger socioecological and sociotechnical
systems. (2) Through a speculative design lens, we show how modelling
can be transformed from data visualization to storytelling and
re-storying present and future worlds that centre on ecological and
multispecies flourishing. Here we show a new ontological dimension of
modelling practices as future and world making. (3) Our research shows
how multispecies caring emerged as an action in this world, and for
creating the future worlds students wanted to see; it became an
affective dimension for making meaning amid the complexity and
uncertainty of the climate crisis. © 2022 Australian Psychological
Society.

## 5.2 Population

<table>
<tbody>
<tr>
<td style="text-align:left;">

Countries.STUDY

</td>
<td style="text-align:left;">

United States

</td>
</tr>
<tr>
<td style="text-align:left;">

TARGETED.SAMPLE

</td>
<td style="text-align:left;">

students

</td>
</tr>
<tr>
<td style="text-align:left;">

SAMPLE

</td>
<td style="text-align:left;">

9th grade

</td>
</tr>
<tr>
<td style="text-align:left;">

sample.size

</td>
<td style="text-align:left;">

700.0

</td>
</tr>
</tbody>
</table>

## 5.3 Objective/questions

**Objective**:

Shift student’s understandings of CC from a technical perspective to a
more social and situated lens of care and responsibility for mitigation.

**Questions**:

- What environmental factors might be contributing to the scale and
  severity of SSWD?
- How has human behaviour and decision-making contributed to disease
  outbreaks, including SSWD?
- How can we support sea star (and other species) long-term health and
  survival in a time of rapid climate change?

## 5.4 Intervention

**Curricular/Extra**: Curricular

**Indoor/Outdoor**: Both

**Type**: 10 week curriculum on SSWD co-created by teachers and climate
science experts.

**Description**: Anchor: - Technical knowledge on the anatomy and
function of the sea star. Mostly traditional classes. - Classification
of photographs of sea stars in various levels of disease (UC Santa Cruz
MARINEe programme
(<https://marine.ucsc.edu/data-products/sea-star-wasting/index.html>).
) - Graph creation: link between SSWD and Sea temperature over time
complemented by geomapping. Complex systems modelling - Causal-loops
models to situate SSWD in a broader socio-ecological context. - Refining
causal-loops with new information/ classes. - Infographic and poster
creation. Community engagement: - Poster and infographic presentation to
a larger audience.

## 5.5 Methods/Results

**Data**: Ethnographic observation and focus groups.

**Analysis**: Retrospective analysis and iterative coding (both
predetermined and iterative codes) based on Ethnographic observations,
focal groups and biweekly surveys

**Results**: Awareness: students report being more aware of CC and its
consequences. - Knowledge: students produce more nuanced and
contextualised explanations of SSWD, its link to CC and its broader
social causes and consequences. - Emotion: Students report being more
engaged and caring more for the environment. - Action: Students produced
infographics and posters presented to stakeholders to foster climate
protection.

**Improved?**: All, specially attitudes turned drastically in favor of
caring for the environment as opposed to simply having techinical
knowledge about it.

## 5.6 Outcomes

**knowledge**: Understanding of SSWD as having social as well as
climatic origins and consequences. (*Worked?*: Yes )

**awareness**: Awareness of social as well as climatic causes and
consequences of SSWD (*Worked?*: Yes )

**emotions**: Attitude of caring and responsibility towards CC and its
consequences on other living beings. (*Worked?*: Yes )

**action**: Reaching out to decision-makers about CC. (*Worked?*: Yes )

## 5.7 Conclusions

**Conclusions**: Specially effective intervention uniting a number of
different strategies and forms of data collection. Intervention appears
to be highly effective motivating knowledge of CC as well as action.

**Message to keep:**: Very complete intervention fostering a more
complex understanding of CC and facilitating action. Deserves a
follow-up and expansion. Could have been helped by a pre-existing
institutional commitment to environmental protection in the observed
schools since they were already interested in urban gardening and
similar activities.

# 6 Meya2018 ( SB )

**title** Effectiveness of gaming for communicating and teaching climate
change

## 6.1 abstract

Games are increasingly proposed as an innovative way to convey
scientific insights on the climate-economic system to students,
non-experts, and the wider public. Yet, it is not clear if games can
meet such expectations. We present quantitative evidence on the
effectiveness of a simulation game for communicating and teaching
international climate politics. We use a sample of over 200 students
from Germany playing the simulation game KEEP COOL. We combine pre- and
postgame surveys on climate politics with data on individual in-game
decisions. Our key findings are that gaming increases the sense of
personal responsibility, the confidence in politics for climate change
mitigation, and makes more optimistic about international cooperation in
climate politics. Furthermore, players that do cooperate less in the
game become more optimistic about international cooperation but less
confident about politics. These results are relevant for the design of
future games, showing that effective climate games do not require
climate-friendly in-game behavior as a winning condition. We conclude
that simulation games can facilitate experiential learning about the
difficulties of international climate politics and thereby complement
both conventional communication and teaching methods.

## 6.2 Population

<table>
<tbody>
<tr>
<td style="text-align:left;">

Countries.STUDY

</td>
<td style="text-align:left;">

Germany

</td>
</tr>
<tr>
<td style="text-align:left;">

TARGETED.SAMPLE

</td>
<td style="text-align:left;">

students

</td>
</tr>
<tr>
<td style="text-align:left;">

SAMPLE

</td>
<td style="text-align:left;">

between 13 and 16

</td>
</tr>
<tr>
<td style="text-align:left;">

sample.size

</td>
<td style="text-align:left;">

184, although 200 completed the survey, no information on why 16 were
dropped.

</td>
</tr>
<tr>
<td style="text-align:left;">

age_min

</td>
<td style="text-align:left;">

13.0

</td>
</tr>
<tr>
<td style="text-align:left;">

age_max

</td>
<td style="text-align:left;">

16.0

</td>
</tr>
<tr>
<td style="text-align:left;">

mean.age

</td>
<td style="text-align:left;">

15.5

</td>
</tr>
<tr>
<td style="text-align:left;">

urban.vs.rural

</td>
<td style="text-align:left;">

urban

</td>
</tr>
</tbody>
</table>

## 6.3 Objective/questions

**Objective**:

Determine effect of the game on perceptions of personal responsability,
confidence in politicians, beliefs on international cooperation and
pessimism about CC. Link in-game decisions to optimism/pesimism about
climate politics.

**Questions**:

Six items were newly designed to capture beliefs about international
climate politics (pre- and post-intervention). in-game decisions: number
of “green” and “black” decisions and self-reported teamplay.

## 6.4 Intervention

**Curricular/Extra**: Curricular

**Indoor/Outdoor**: Indoor

**Type**: serious gaming

**Description**: A computer simulation game in which each participant
takes the role of a country belonging to one of 6 broad categories
(developing countries, Western Europe, ex-USSR countries, OPEC, rapidly
industrializing countries and umbrella group). Players must chose
between “green” and “black” technologies, adapt to CC or research on
climate research to achieve a number of country-specific objectives.
Over the in-game rounds, global temperature rises according to player’s
decisions and all players lose if a critical threshold is reached. A
player wins when they achieve a number or arbitary objectives.

## 6.5 Methods/Results

**Data**: pre-/post- surveys.

**Analysis**: Linear regressions comparing pre- and post-game beliefs
about climate politics and personal responsibility.

**Results**: Significant pre- / post- change in the expected direction:
less pesimism and more confidence in political and international
collaboration and more personal responsibility in the post- compared to
pre-intervention.

**Improved?**: Personal responsibility, confidence and pessimis on
climate politics.

## 6.6 Outcomes

**emotions**: Pesimism about CC lower in the post intervention
(*Worked?*: yes )

**other**: Personal responsibility and beliefs about climate politics
and international cooperation (*Worked?*: yes )

## 6.7 Conclusions

**Conclusions**: Game has a significant effect on climate politics
(international cooperation) as well as personal responsibility and
climate pessimism, not on confidence in politicians.

**Message to keep:**: Tabletop game directly shows the social and
political variables at play in CC politics changing personal
responsibility and political pbeliefs about CC.

# 7 Nakamura2019 ( ABP )

**title** Multi-Timescale Education Program for Temporal Expansion in
Ecocentric Education: Using Fixed-Point Time-Lapse Images for Phenology
Observation

## 7.1 abstract

Ecocentric education programs should include a method for the in-depth
understanding of multi-scale ecological time concepts. To accomplish
this, the common restriction that ecocentric education should pertain
only to realistic nature may have to be removed. The purpose of this
research was to confirm the validity of a program featuring phenology
observation, employing fixed-point time-lapse images as climate change
learning, and to obtain suggestions on the influence of the program on
the multi-timescale concepts of the learners. An observation sheet
listing images of cherry flowering from 16 April to 15 March each year
from 1996 to 2017 was created, and the 50-min educational program using
the observation sheet was conducted with 189 third year junior high
school students. The tendencies among students’ answers to the two
questions before and after the program suggest that the program
contributed to the students acquiring the hundreds-year timescale
concept based on the short-term timescale concept of dynamic nature. The
contribution of this research is to visualize long-term and multi-scale
ecological time concepts. By combining long-term time-lapse images with
everyday nature experiences, the possibility of expanding such emotions
as wonder and attachment to nature towards a long-term ecological
timescale is achieved.

## 7.2 Population

<table>
<tbody>
<tr>
<td style="text-align:left;">

Countries.STUDY

</td>
<td style="text-align:left;">

Japan

</td>
</tr>
<tr>
<td style="text-align:left;">

TARGETED.SAMPLE

</td>
<td style="text-align:left;">

students

</td>
</tr>
<tr>
<td style="text-align:left;">

SAMPLE

</td>
<td style="text-align:left;">

high school

</td>
</tr>
<tr>
<td style="text-align:left;">

sample.size

</td>
<td style="text-align:left;">

189.0

</td>
</tr>
<tr>
<td style="text-align:left;">

age_min

</td>
<td style="text-align:left;">

14.0

</td>
</tr>
<tr>
<td style="text-align:left;">

age_max

</td>
<td style="text-align:left;">

15.0

</td>
</tr>
<tr>
<td style="text-align:left;">

urban.vs.rural

</td>
<td style="text-align:left;">

urban

</td>
</tr>
</tbody>
</table>

## 7.3 Objective/questions

**Objective**:

to confirm the validity of a program featuring phenology observation,
employing fixed-point time-lapse images as climate change learning, and
to obtain suggestions on the influence of the program on the
multi-timescale concepts of the learners.

**Questions**:

NA

## 7.4 Intervention

**Curricular/Extra**: Extracurricular

**Indoor/Outdoor**: Both

**Type**: environmental education program

**Description**: Using the observation sheet printed on an A3-size
paper, the students attached a red sticker on the day they judged as
“full bloom date,” according to the above-mentioned observation criteria
(Figure 3). This observation work took approximately 15 min out of the
50 min allotted for the entire program. Students were able to grasp the
annual change of flowering phenology by perceiving the red seal similar
to a graph point. At the time, only these 50 min could be secured; thus,
the students themselves did not analyze or consider the relationship
between the full bloom date and the annual temperature. Instead, the
instructor explained that the full bloom date of cherry blossoms was
related to global warming in that it is affected by the temperature
conditions of each year.

## 7.5 Methods/Results

**Data**: NA

**Analysis**: The mean of all the students’ determinations of full bloom
day with a red sticker was calculated. In addition, sample variance and
sample standard deviation were calculated in order to understand how
much variation existed among the students.

**Results**: The 50-min educational program that includes a 15-min plant
phenology observation activity by third-year junior high school students
has provided ecologically appropriate phenology observation results, as
well as the potential for important educational effects regarding
timescale, as described above. the students acquiring the hundreds-year
timescale concept based on the short-term timescale concept of dynamic
nature.

**Improved?**: conocimiento mejoro

## 7.6 Outcomes

**knowledge**: acquirement of the hundreds-year timescale concept based
on the short-term timescale concept of dynamic nature (*Worked?*: NO )

**emotions**: wonder and attachment to nature (*Worked?*: YES )

## 7.7 Conclusions

**Conclusions**: although the students might be able to observe daily
changes and differences among the years from 1996 to 2017, they were not
able to directly observe the ecological effects of long-term climate
change, such as global warming.

**Message to keep:**: NA

# 8 Saribaş2016 ( JGOP )

**title** Evaluating Effects of an Exhibition Visit on Pre-Service
Elementary Teachers’ Understandings of Climate Change

## 8.1 abstract

## 8.2 Population

<table>
<tbody>
<tr>
<td style="text-align:left;">

Countries.STUDY

</td>
<td style="text-align:left;">

Turkey

</td>
</tr>
<tr>
<td style="text-align:left;">

TARGETED.SAMPLE

</td>
<td style="text-align:left;">

pre-service teachers

</td>
</tr>
<tr>
<td style="text-align:left;">

SAMPLE

</td>
<td style="text-align:left;">

Elementary school teachers

</td>
</tr>
<tr>
<td style="text-align:left;">

sample.size

</td>
<td style="text-align:left;">

58.0

</td>
</tr>
<tr>
<td style="text-align:left;">

urban.vs.rural

</td>
<td style="text-align:left;">

urban

</td>
</tr>
</tbody>
</table>

## 8.3 Objective/questions

**Objective**:

This research aims to investigate the effects of an exhibition visit on
pre-service elementary teachers’ understandings of climate change.

**Questions**:

1.  To what extent did the exhibition visit embedded within the
    environmental education program affect pre-service elementary
    teachers’ understandings of climate change?
2.  How did the EE course affect the participants’ understandings of
    climate change?
3.  Was there any significant difference between the understandings of
    participants who attended the exhibition and those who did not?

## 8.4 Intervention

**Curricular/Extra**: Extracurricular

**Indoor/Outdoor**: Both

**Type**: Basic concepts and participation on a exhibition visit

**Description**: During the first five weeks, basic concepts and
information about ecology and the historical development and causes of
environmental problems were introduced. During the next five weeks,
worked in groups (with three or four members) to prepare and deliver
presentations about current environmental problems as listed below. 1.
Water pollution 2. Air pollution 3. Soil pollution and erosion 4.
Radioactive pollution 5. The depletion of the ozone layer 6. The loss of
biological diversity 7. Waste 8. Energy 9. Hormone-injected foods and
genetically modified organisms 10. Global warming. At the beginning of
the term, the pre-service teachers submitted pre-reflections on the
issue of climate change. After the presentations, the participants
attended an exhibition about climate change. Participation in the
exhibition visit was voluntary, but all participants were required to
submit their post-reflection on climate change at the end of the term.
The main purpose of the exhibition was to increase attendees’ awareness
and knowledge about climate change.

## 8.5 Methods/Results

**Data**: Pre-and post-reflections

**Analysis**: Various codes emerged from the participants’ explanations
for the definitions, causes, and consequences of climate change, and
their suggestions for possible solutions. The McNemar test was used to
analyze the codes that emerged from the participants’ pre- and
post-reflections. The McNemar test was used to analyze the codes that
emerged from the participants’ pre- and post-reflections.

**Results**: Table 5 shows the statistically significant results of the
changes in pre-service elementary teachers’ understandings of climate
change throughout the course for those who attended the exhibition and
those who did not, with a .05 confidence interval. It was found that the
EE course resulted in significant changes in specified categories for
both visitors and non-visitors to the exhibition.

**Improved?**: Better understanding of climate change

## 8.6 Outcomes

**knowledge**: The effects of an exhibition visit on the understanding
of climate change (*Worked?*: Yes )

## 8.7 Conclusions

**Conclusions**: The results of this study revealed that the EE course,
with its focus on various environmental problems, seems to have had an
impact on pre-service elementary teachers’ understandings of climate
change. Throughout the course they also improved their understandings
about reducing and coping with climate change, including the use of
renewable energy sources, public transportation, and the importance of
individual effort.

**Message to keep:**: Using different approaches to understand climate
change is recommend. This study findings support the idea that the use
of outdoor activities (e.g. exhibition visit) could bring to the
teachers more information and promixity to the climate change issue.

# 9 Schubatzky2022 ( ABP )

**title** Debunking Climate Myths Is Easy—Is It Really? An Explorative
Case Study with Pre-Service Physics Teachers

## 9.1 abstract

Climate change is a complex topic and hence makes teaching climate
change a demanding task. This is especially because climate change still
represents a (socially) controversial topic and students may be
confronted with misrepresentations and misinformation about climate
change in their daily lives. Therefore, it is important that science
teachers are equipped with skills to properly respond to or “debunk”
climate change misinformation, and to train their students on how to
identify and respond to misinformation. To address this, we developed an
intervention based on inoculation theory and known debunking techniques
to foster physics pre-service teachers’ debunking skills as well as
their self-efficacy to confront climate misinformation. Through the
intervention, we showed that the participants increased their debunking
skills and they showed more accurate assessments of their own skills. We
conclude that this approach is promising to foster pre-service teachers’
perceived competence to teach the demanding topic of climate change.
Finally, our approach generally shows potential in preparing future
teachers to teach other controversial topics where misinformation is
abundant.

## 9.2 Population

<table>
<tbody>
<tr>
<td style="text-align:left;">

Countries.STUDY

</td>
<td style="text-align:left;">

Austria

</td>
</tr>
<tr>
<td style="text-align:left;">

TARGETED.SAMPLE

</td>
<td style="text-align:left;">

Entourage (Teachers)

</td>
</tr>
<tr>
<td style="text-align:left;">

SAMPLE

</td>
<td style="text-align:left;">

High school

</td>
</tr>
<tr>
<td style="text-align:left;">

sample.size

</td>
<td style="text-align:left;">

20.0

</td>
</tr>
<tr>
<td style="text-align:left;">

mean.age

</td>
<td style="text-align:left;">

45102.0

</td>
</tr>
<tr>
<td style="text-align:left;">

urban.vs.rural

</td>
<td style="text-align:left;">

urban

</td>
</tr>
</tbody>
</table>

## 9.3 Objective/questions

**Objective**:

To improve physics pre-service teachers’ (PSTs) skills to debunk climate
change misinformation and to apply ideas of inoculation theory in their
future teaching

**Questions**:

1.  Does an intervention based on active inoculation and debunking tasks
    in the context of climate change contribute to an increase in
    physics pre-service teachers’ perceived knowledge about climate
    change?
2.  Does an intervention based on active inoculation and debunking tasks
    contribute to an increase in physics pre-service teachers’ debunking
    skills?
3.  Does an intervention based on active inoculation and debunking tasks
    contribute to an increase in the participating physics pre-service
    teachers’ climate myth debunking self-efficacy?
4.  How do students evaluate the learning environment based on active
    inoculation and debunking?

## 9.4 Intervention

**Curricular/Extra**: ProfessionalDevelopment

**Indoor/Outdoor**: Indoor

**Type**: educational experience

**Description**: The preservice physics teachers filled in a
questionnaire on demographics, climate change beliefs, and their
perceived knowledge about climate change. Furthermore, they completed a
debunking task to measure their PSTs’ debunking skills. Additionally, we
measured the PSTs’ climate myth debunking self-efficacy before and after
completion of the debunking task as part of the measurement.

## 9.5 Methods/Results

**Data**: pre-test / post-test compared statistically with paired
t-tests

**Analysis**: The analysis of data was carried out with either t-tests
or Wilcoxon rank sum-tests depending on the distribution of the
variables.

**Results**: Through the intervention, we showed that the participants
increased their debunking skills and they showed more accurate
assessments of their own skills.

**Improved?**: understanding improved

## 9.6 Outcomes

**knowledge**: competence to teach (*Worked?*: yes )

**other**: Self efficacy, but it is possible that this self efficacy
concern misconception, and would not be related to the behavior
concerning mitigation/adaptation to CC (*Worked?*: YES )

## 9.7 Conclusions

**Conclusions**: We conclude that this approach is promising to foster
pre-service teachers’ perceived competence to teach the demanding topic
of climate change

**Message to keep:**: we have shown that our debunking task, using real
world climate change misinformation, is a feasible approach to measuring
debunking skills. We want to encourage future studies to investigate
other approaches to foster the development of debunking skills by using
similar measurements. Furthermore, the relationship between conceptual
understandings or attitudinal beliefs and PSTs’ debunking skills should
especially be investigated in future studies.

# 10 Sellmann2013a ( SB )

**title** Effects of a 1-day environmental education intervention on
environmental attitudes and connectedness with nature

## 10.1 abstract

Besides cognitive learning effects, short-term environmental education
(EE) is often regarded as ineffective in intervening with participants’
environmental attitudes and behaviour. However, in Germany, school
classes often participate in such 1-day EE programmes because they
better match the school curriculum in contrast to longer (residential)
programmes. We therefore monitored a 1-day outreach EE programme on
global climate change to reveal whether environmental attitudes and/or
connectedness with nature of tenth graders are affected. Students from
German high schools (college preparatory secondary school level,
‘Gymnasium’) (N0114) from age 14 to 19 participated in the programme
(treatment group). It consisted of two student-centred learning units on
the topic of climate change. Additionally, we chose a control group of
students who did not participate in the programme. To measure students’
environmental attitudes and connectedness with nature, we administered
the Two Major Environmental Values (2-MEV) and the Inclusion of Nature
in Self scale in a pre-, post- and retention test design. The pre-test
was administered 1 week before, the post-test directly after and the
retention test 4 to 6 weeks after programme participation. Analyses
revealed a positive long-term effect only for utilitarian values (one of
the two major environmental factors of 2-MEV) which decreased
significantly. Therefore, depending on the programme’s content,
short-term EE programmes indeed may have an influence on participants’
environmental attitudes. © Instituto Superior de Psicologia Aplicada,
Lisboa, Portugal and Springer Science+Business Media BV 2012.

## 10.2 Population

<table>
<tbody>
<tr>
<td style="text-align:left;">

Countries.STUDY

</td>
<td style="text-align:left;">

Germany

</td>
</tr>
<tr>
<td style="text-align:left;">

TARGETED.SAMPLE

</td>
<td style="text-align:left;">

students

</td>
</tr>
<tr>
<td style="text-align:left;">

SAMPLE

</td>
<td style="text-align:left;">

High Sschool students ("Gymnasium")

</td>
</tr>
<tr>
<td style="text-align:left;">

sample.size

</td>
<td style="text-align:left;">

151.0

</td>
</tr>
<tr>
<td style="text-align:left;">

age_min

</td>
<td style="text-align:left;">

15.0

</td>
</tr>
<tr>
<td style="text-align:left;">

age_max

</td>
<td style="text-align:left;">

19.0

</td>
</tr>
</tbody>
</table>

## 10.3 Objective/questions

**Objective**:

Observe effect of a short, 1-day outreach EE programme on global climate
change on environmental attitudes and/or connectedness with nature.

**Questions**:

Two major environmental values scale (2-MEV) and Inclusion of Self in
Nature (ISN).

## 10.4 Intervention

**Curricular/Extra**: Curricular

**Indoor/Outdoor**: Outdoor

**Type**: Two learning modules in an ecological-botanical garden.

**Description**: Two interventions: 1: 8 (and one optional) workstations
in a seminar room. Up to four children had to solve tasks as presented
in a workbook in each workstations. Tasks dealt with climate modelling,
policy, energy savings, effect of CC in ecosystems, CC and earth’s
history and greehouse gasses. Theory heavy. 2: In the public gardens and
greenhouses students were given an explorer’s booklet directing taks
across the whole garden. Tasks dealt with tropical rainforest (threat by
deforestation and climate change), effects of CC on fire ecosystems, CC
and German forestry, effects of CC on alpine ecosystems and economy (ski
tourism), and renewable primary products as a means to reduce burning of
fossil fuels. Taks were coupled with a specific plant that represented
the intended content.

## 10.5 Methods/Results

**Data**: 2 psychometric instruments - 2-MEV measuring attitudes towards
preservation and utilization of nature - Inclusion of the self in nature

**Analysis**: Compare mean attitutes and INS scores across experimental
group and over three times (baseline, short-term and long-term).

**Results**: Works in the expected direction in both cases, but only
presetvation maintains its change in the “long term” (4 to 6 weeks).

**Improved?**: Results appear to change over short vs long term.

## 10.6 Outcomes

**knowledge**: Preservation and Utilisation of nature scales (2-MEV) and
Inclusion of Nature in the Self. (*Worked?*: Parcially, worked in the
expected direction (both short and long term) for preservation but not
so for utilization (scores returned to baseline in long-term
measurement). )

**emotions**: Inclusion of Nature in the Self (*Worked?*: Parcially,
worked in the expected direction in the short term but returned to
baselin in long-term follow-up. )

## 10.7 Conclusions

**Conclusions**: 1-day environmental education works well but its
effects struggles to maintain over time.

**Message to keep:**: Effective but not long-lasting intervention
overall.

# 11 Stevenson2018 ( LR )

**title** Developing a model of climate change behavior among
adolescents

## 11.1 abstract

Research on adolescent climate change perceptions has uncovered key
insights about how knowledge, concern, and hope might relate to behavior
and the potential for educational interventions to influence these
factors. However, few of these studies have employed treatment/control
designs that might address causality and none have addressed how these
factors might interact to influence behavior. We developed a model of
behavior change where a climate education treatment impacted knowledge,
knowledge impacted hope and concern, and hope and concern together
impacted behavior. We empirically tested the utility of this model and
the causal relationships within it using a pre/post, treatment/control
evaluation of climate education among adolescents in North Carolina, USA
(n=1041). We found support for a causal relationship between the
treatment and gains in knowledge, but not between treatment and
behavior. However, we did find support for a path model in which climate
change knowledge positively relates to increased climate change concern
and hope, and increases in concern and hope predict changes in
pro-environmental behavior. Low SES was related to smaller gains in
knowledge, concern, and behavior. Our results contribute to a
theoretical understanding of climate change behaviors among adolescents
and suggest that climate education aiming to change behavior should
focus on building hope and concern.

## 11.2 Population

<table>
<tbody>
<tr>
<td style="text-align:left;">

Countries.STUDY

</td>
<td style="text-align:left;">

United States

</td>
</tr>
<tr>
<td style="text-align:left;">

TARGETED.SAMPLE

</td>
<td style="text-align:left;">

students

</td>
</tr>
<tr>
<td style="text-align:left;">

SAMPLE

</td>
<td style="text-align:left;">

Students from 6,7 and 8th grades from several schools

</td>
</tr>
<tr>
<td style="text-align:left;">

sample.size

</td>
<td style="text-align:left;">

1041.0

</td>
</tr>
<tr>
<td style="text-align:left;">

age_min

</td>
<td style="text-align:left;">

11.0

</td>
</tr>
<tr>
<td style="text-align:left;">

age_max

</td>
<td style="text-align:left;">

15 and older

</td>
</tr>
<tr>
<td style="text-align:left;">

urban.vs.rural

</td>
<td style="text-align:left;">

urban

</td>
</tr>
</tbody>
</table>

## 11.3 Objective/questions

**Objective**:

To test a model that incorporates insights about how knowledge, concern,
and hope might relate to behavior and the potential for educational
interventions to influence these factors.

**Questions**:

Authors hypothesized that: The intervention would directly and
positively impact climate change science knowledge Increased climate
change knowledge would lead to increased climate change concern and hope
Changes in concern and hope would be positively related to changes in
climate change behavior

## 11.4 Intervention

**Curricular/Extra**: Curricular

**Indoor/Outdoor**: Indoor

**Type**: Activities incorporated in the curriculum

**Description**: The educational intervention included four activities
modeled after Project WILD focusing on wildlife biology, ecology, and
conservation (see projectwild.org) characterized by highly engaging,
hands-on activities. Activities focused on (1) the difference between
weather and climate, (2) how climate and weather relate to location of
habitats and wildlife, (3) how wildlife managers can and are planning
for climate change, and (4) how individual actions can mitigate climate
change and improve climate resilience among wildlife

## 11.5 Methods/Results

**Data**: NA

**Analysis**: Statistical analysis to test a hipothesized Path model
that allows to test direct and indirect relations

**Results**: Increased knowledge predicted increased hope and concern,
which together predicted increased levels of climate change mitigation
behaviors More specifically,change in knowledge appeared more strongly
associated with change in concern (β= 0.088) than change in hope
(β=0.077) (Fig. 2, Fig. S1). Change in hope (β= 0.110) appeared to be a
slightly stronger predictor of change in behavior than change in concern
(β= 0.105) (Fig. 2, Fig. S2). Students attending Title I schools (lower
SES) were less likely to display increased knowledge, concern, and
behavior with all other variables held constant (Fig. 2, Figs. S1, S2).

**Improved?**: They found partial support for a causal relationship
between the treatment and gains in knowledge, but not between treatment
and behavior. But they found support for a path model whereby knowledge
positively relates to increased climate change concern and hope, and
increases in concern and hope predict changes in pro-environmental
behavior

## 11.6 Outcomes

**knowledge**: knowledge (climate change science, causes, and impacts
(*Worked?*: yes )

**awareness**: concern (e.g., communicating the impacts of climate
change on wildlife), (*Worked?*: yes )

**emotions**: hope (e.g., what others are doing, what you can do)
(*Worked?*: yes )

**action**: pro-environmental behavior (*Worked?*: Partially )

**other**: Authors are testing a model of direct and indirect relations
(*Worked?*: They found partial support for a causal relationship between
the treatment and gains in knowledge, but not between treatment and
behavior. But they found support for a path model whereby knowledge
positively relates to increased climate change concern and hope, and
increases in concern and hope predict changes in pro-environmental
behavior )

## 11.7 Conclusions

**Conclusions**: This study provides empirical evidence of a
relationship between knoledge, hope and concern, and behavior, and in
particular that hope rather than concern predicts proenvironmental
behavior. It also provides evidence of the diferent effects of
interventions depending on socioeconomic status of students

**Message to keep:**: NA

# 12 Veijalainen2013 ( BQ )

**title** Free Public Species Naming to Promote Proenvironmental
Behavior?

## 12.1 abstract

To examine the impact of naming rights on support for environmental
protection, we provided a high school class the opportunity to name a
species of a parasitoid wasp after hearing a lecture on the extent and
loss of biodiversity, with special focus on species description and
climate change. Two other classes received the same presentation but
were not able to name the species. Results showed a small impact on
behavior, when controlling for environmental identity, with the
experimental group scoring higher than the other two groups. This effect
did not persist at a retest 4 months later. Other analyses showed,
however, that environmental concern and concern about effects on the
ecosystem had a significant effect on behavior at time 2 even when
controlling for behavior at time 1. Implications for educational
interventions are discussed. © Mary Ann Liebert, Inc. 

## 12.2 Population

<table>
<tbody>
<tr>
<td style="text-align:left;">

Countries.STUDY

</td>
<td style="text-align:left;">

Finland

</td>
</tr>
<tr>
<td style="text-align:left;">

TARGETED.SAMPLE

</td>
<td style="text-align:left;">

students

</td>
</tr>
<tr>
<td style="text-align:left;">

SAMPLE

</td>
<td style="text-align:left;">

16-18 yrs old

</td>
</tr>
<tr>
<td style="text-align:left;">

sample.size

</td>
<td style="text-align:left;">

63.0

</td>
</tr>
<tr>
<td style="text-align:left;">

age_min

</td>
<td style="text-align:left;">

16.0

</td>
</tr>
<tr>
<td style="text-align:left;">

age_max

</td>
<td style="text-align:left;">

18.0

</td>
</tr>
<tr>
<td style="text-align:left;">

urban.vs.rural

</td>
<td style="text-align:left;">

Urban

</td>
</tr>
</tbody>
</table>

## 12.3 Objective/questions

**Objective**:

whether allowing the public to choose the name could have an indirect
pos- itive effect on their view on nature conservation?

**Questions**:

NA

## 12.4 Intervention

**Curricular/Extra**: Extracurricular

**Indoor/Outdoor**: Indoor

**Type**: Lessons /Lectures

**Description**: First, all the groups were given the same lecture on
the concept, importance, and extent of the known and unknown
biodiversity, also explaining the current threats to biodiversity with a
special focus on climate change. Second, the classes were given an
example of a new undescribed species of parasitoid wasp collected in the
Peruvian rain forests. The speaker explained what was known about the
species’ biology and role in the ecosystem, also discussing the possible
threats of climate change to its survival. Third, the classes were
briefly informed about what actions they could take to control climate
change and thus promote the species’ existence, underlining each
individual’s freedom to choose his or her own actions. Next, the
experimental class was told that they could decide the name for the new
species. The class was divided into six groups, each group suggested a
name, the winning name was elected in a secret ballot, and finally only
the chosen name was announced to the students. The students chose to
name the species after their school. Last, all the students in each
class answered a questionnaire independently (School 1 control: 26
students, School 2 control: 19, School 2 experiment: 18).

## 12.5 Methods/Results

**Data**: Per-iterm-scores of Pre- and post-questionnaires analyzed

**Analysis**: analyses of variance examined possible effects of
experimental manipulation and of time of testing. Correlations were
computed among the dependent measures of behavior and concern and the
personality variables of EID and value-based concern (egocentrism,
anthropocentrism, biocentrism). Statistical analyses with significant
differences (P-value)

**Results**: Results suggest that naming a species might increase a
proenvironmental behavioral tendency; but because this tendency did not
persist, at least in the absence of follow-up information, we cannot
draw a definitive conclusion. The short-term effect of naming the
species that we found might translate into a stronger effect if there
were more follow-up information and more context.

**Improved?**: NA

## 12.6 Outcomes

**knowledge**: The questionnaire was designed to assess students’
knowledge (four items) $$Questions were not accessible$$ (*Worked?*: At
short term yes, not at mid term )

**awareness**: value-based concern, or the extent to which they were
concerned about effects on themselves (egocentrism), other humans
(anthropocen- trism), and nature (biocentrism) (adapted (*Worked?*: Yes
)

**intention**: behavioral intention (*Worked?*: At short term yes, mid
term no (except for the Biocentric group) )

**action**: their predisposition to act in envi- ronmentally protective
ways (eight items). (*Worked?*: Yes at short-term, no at mid-term )

## 12.7 Conclusions

**Conclusions**: Things that are self-relevant attract more attention
and are better remembered. Studies have shown that a greater sense of
interde- pendence with environmental entities is associated with greater
concern about, and actions in support of, protecting their well-being.
Awareness of negative impacts might not be enough; one must actually
value nature. Concern about nonhuman environmental entities not only
predicts proenvironmental behavior but predicts continued increase in
behavior over time.

**Message to keep:**: Things that are self-relevant attract more
attention and are better remembered. Studies have shown that a greater
sense of interde- pendence with environmental entities is associated
with greater concern about, and actions in support of, protecting their
well-being. Awareness of negative impacts might not be enough; one must
actually value nature. Concern about nonhuman environmental entities not
only predicts proenvironmental behavior but predicts continued increase
in behavior over time.

# 13 Walsh2018 ( MB )

**title** “Thank You for Being Republican”: Negotiating Science and
Political Identities in Climate Change Learning

## 13.1 abstract

When engaging with socioscientific issues, learners act at the
intersection of scientific, school, and other societal communities,
drawing on knowledge, practices, and identities from both in and out of
the classroom to address problems as national or global citizens. We
present three case studies of high school students whose classroom
participation in a unit on the politically polarizing topic of climate
change was informed by their political identities and how they situated
themselves in climate change’s sociocultural, historical, and geologic
context. We describe how these students, including two who initially
rejected human-influenced climate change but revised their
understandings, negotiating dissonant identities in the classroom
through repeated engagement with conflicting political and scientific
values, knowledge, and beliefs. These case studies problematize building
bridges between formal and informal learning experiences and suggest
that it may be necessary to leverage disconnections in addition to
building connections across settings to promote productive identity
work. The results further suggest that supporting climate change
learning includes attending to identity construction across ecosocial
timescales, including geologic time.

## 13.2 Population

<table>
<tbody>
<tr>
<td style="text-align:left;">

Countries.STUDY

</td>
<td style="text-align:left;">

United States

</td>
</tr>
<tr>
<td style="text-align:left;">

TARGETED.SAMPLE

</td>
<td style="text-align:left;">

students

</td>
</tr>
<tr>
<td style="text-align:left;">

SAMPLE

</td>
<td style="text-align:left;">

High school students (grade not mentioned)

</td>
</tr>
<tr>
<td style="text-align:left;">

sample.size

</td>
<td style="text-align:left;">

3.0

</td>
</tr>
<tr>
<td style="text-align:left;">

urban.vs.rural

</td>
<td style="text-align:left;">

urban

</td>
</tr>
</tbody>
</table>

## 13.3 Objective/questions

**Objective**:

In this study we examine how students’ identities as participants in
political and scientific communities informed their participation in a
unit on the ecological impacts of climate change.

**Questions**:

- What scientific and political knowledge, practices, and identities do
  the students leverage as they participate in the ecological impacts of
  climate change unit?
- In what ways do the scientific and political knowledge, practices, and
  identities conflict, and how do students resolve these differences
  over time?
- How do the ways in which learners situate themselves with respect to
  social and ecological process across timescales inform their
  perceptions and valuing of climate change science and responses?

## 13.4 Intervention

**Curricular/Extra**: Curricular

**Indoor/Outdoor**: Indoor

**Type**: Lessons, class discussions, data analysis activities, citizen
science participation, infographic communication

**Description**: “Ecological impacts of climate change curriculum”: 1,
introduction and context (1 week): introductive class discussion, media
exploration (youTube videos of scientists and politiicians), class
discussions about arguments and evidences, questions to scientists on
social media platform created for it 2. Evidence and Impacts (3 weeks):
going to local park 3 times to conduct field work related to
phenological shifts and contribute to the National Phenology Network, a
citizen science effort, research on a case study of climate impacts on a
local species using GIS and climate model data,experiment with Wisconsin
Fast Plant, analyses of time series data on atmospheric and oceanic data
with scientists, activity on ice core with scientist, calculation of
economic costs of affected ecosystem services 3. Infographic (2 weeks):
students used class data and their own research to construct an
infographic or visual display of data, feedback of the scientists,
revision and presentation

## 13.5 Methods/Results

**Data**: Data sources included the following: ● Video observations of
Mr. S’s classroom (~30 hr, October 17–December 6, 2011) ● Video-recorded
exit interviews with the students at the end of the unit (30– 60 min per
student, in groups of two or three) ● Curricular artifacts, including
pre- and posttests, student work, student posts on the social media
platform, responses by experts to student work, weekly engagement
surveys, and digital photographs ● Qualitative field notes of classroom
activities (~80 pages)

**Analysis**: (Qualitative) We analyze how learners enacted and
constructed identities through a framework of Discourses that relate to
societal Conversations (Gee, 2011).

**Results**: Results are difficult to synthetise (detailed analyses of
the 3 cases over 42 pages, with quite a different objective from ours),
however the main ideas are: - Luke (republican with a climate denier
father) had to negotiate the conflict between the curriculum’s
scientific content and the political beliefs of his family, but change
his views about climate change and integrate knowledge about it -
Timothy (republican) was also very critical about the reality of
anthropogenic climate change. His personal identity as someone who was
good at science helped support his engagement with the evidence. This
continuity of this valued practice across settings ultimately supported
Timothy in negotiating tensions between the communities to which he
belonged and his continuing science identity work. Timothy participated
a lot in the debate, integrated a lot of the scientific processes and
knowledge and changed radically its view toward anthropogenic climate
change - Gareth (democrats with eco-concerned parents) thought that he
did not need to be convinced because of its democrat background. He did
not participate very actively in discussions, and ended up more or less
sure of the mechanisms of climate change, his statements demonstrate
that his understanding of climate change was a dynamic one influenced
both by the science he learned as well as by the controversy that he was
exposed to through social interactions in the classroom. However, he
deepened his understanding of both the scientific and political
dimensions, and as a result he wanted to continue to learn more about
thescientific evidence and the social controversy While actions and
intents were not central in the analyses, the authors noted that the 3
students were not very eager in taking actions against climate change,
for various reasons

**Improved?**: All students accepted the scientific reality of
anthropogenic climate change, however with some doubts and difficulties
to integrate this reality with their own political identities or the
environment of political debate surrounding it in USA. All students
improved in terms of scientific knowledge and understanding of the CC
processes. None of the 3 students seems eager to take action.

## 13.6 Outcomes

**knowledge**: Knowledge about the scientific processes and the
associated evidencesconcerning CC (*Worked?*: Yes )

**awareness**: - Belief about anthropogenic climate change -
consciousness (and differenciation) of the political and scientific
aspects of climate change (*Worked?*: Yes )

**intention**: Willingness to take action or change habits (*Worked?*:
No )

## 13.7 Conclusions

**Conclusions**: While the class and activities had a positive impact on
the knowledge and awareness of the students concerning climate change,
it is important to consider the difficult negociation between political,
educative and social identities that CCE confront. To most effectively
support learning of climate change, research must better explicate these
interactions to support learners as they navigate communities and
negotiate identities.

**Message to keep:**: Very interesting and different article, the
authors show some encouraging results concerning gain of knowledge and
awareness, but what is really interesting is how this is accompanied by
very complicated negociations of identities in middle-class-USA, where
largely shared political positions are against the idea of anthropogenic
climate change. Moreover the authors mention that none of the studied
students is eager to take action, and it might be related to the
political climate of USA.
