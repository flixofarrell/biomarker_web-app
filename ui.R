library(shiny)
library(shinyWidgets)
library(tidyr)
library(dplyr)
library(aos)
library(htmltools)
library(bsplus)
library(shinyBS)


#START
ui <- fluidPage(id = "navbar_font" , title = "FOF - MSc Bioinformatics & Systems Biology", setBackgroundImage(src= "dna3.jpg"),  use_aos(disable = "mobile"),
               
  
      tags$style(HTML("
      #border {
          border: 1px solid grey;
      }
      #navbar_font {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 20px;
            color: white;
      }
      #ab_font {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 40px;
            color: white;
            background-color: rgba(0, 0, 0, 0.7)
      }
      #plot_backg {
            background-color: rgba(0, 0, 0, 0.8);
      }
      #write_backg {
            background-color: rgba(255, 255, 255, 0.89);
            font-family: Arial, Helvetica, sans-serif;
            font-size: 20px;
            color: black;
            left-padding: 20px;
            right-padding: 20px
      }
      #ab {
            background-color: rgba(7, 43, 62, 0.9);
            font-family: Arial, Helvetica, sans-serif;
            font-size: 27px;
            color: white 
            left-padding: 20px;
            right-padding: 20px
      }
      .tooltip {
            width: 200px;
            font-size: 20px;

      }
      .btn {
            background-color: rgba(255, 255, 255, 0);
            font-family: Arial, Helvetica, sans-serif;
            font-size: 20px;
            display: inline;
            color: rgb(184, 136, 83);
            border-style: none;
            margin-left: 0px; 
            margin-right: 0px;
            white-space: nowrap;
            padding: 0px 0px 3px;
      }
      .modal-backdrop {
          background-color: rgba(13, 52, 91, 1);
      }
      .modal-content {
          background-color: rgba(0, 0, 0, 0.73);
      }
      .modal-header {
          background-color: rgba(0, 0, 0, 0.73);
          color: white;
      }
      .modal-content {
          color: white;
      }
      .popover-title {
          color: #086199;
          background-color: #808080;
          font-size: 15px;
      }
      .popover-content {
          color: white;
          font-size: 15px;
      }
      .popover {
      background-color: #808080;  
      width: 1000px;
      position: absolute;
      container: 'body';  
      white-space: pre-wrap; 
      html:true;
      }

      ")),

     
#NAVBAR
navbarPage(title = "", inverse = TRUE, 
  collapsible = FALSE, id = "navbar_font", position = 'fixed-top',   
  

#HOME

tabPanel(title = "Home", 

           
br(), br(), br(), br(), br(), br(), br(),

#bs_button(inputId = "pop", label = "Neutrophils", class = "clk"),
fluidRow(
        aos(
      element = fluidRow(h1(tags$u("SNP-based network and enrichment analysis of neutrophil count 
                                   and CRP identify",tags$i("HLA-DRB1"), "as a core element of inflammatory diseases"), 
          align = "left", style = "height: 100; padding: 50px 50px;
                                     font-size:65px;")), 
      animation = "zoom-in", 
      duration = "2700"),
        ),
 
 br(), br(), br(), br(),
fluidRow(
        aos(       
      element = fluidRow(h1("Student: Felix O'Farrell"), 
          align = "left", style = "height: 100; padding: 10px 10px;
                                     font-size:65px;"), 
      animation = "zoom-in-right", 
      duration = "1500"),
        ),
fluidRow(
        aos(
      element = fluidRow(h1("Supervisor: Dr Antonio Berlanga-Taylor"), 
          align = "left", style = "height: 100; padding: 10px 10px;
                                     font-size:60px;"), 
      animation = "zoom-in-right", 
      duration = "1500"),
        ),

br(), br(),

fluidRow(
  aos(
    element = fluidRow(h2("Scroll down"), 
                       align = "center", style = "height: 20; padding: 10px 10px;
                                     font-size:60px;"), 
    animation = "zoom-in-right", 
    duration = "1500"),
),
br(),
fluidRow(
  aos(
    element = fluidRow(p("•"), 
                       align = "center", style = "height: 0.5; padding: 4px 4px;
                       font-size:100px;"), 
    animation = "fade-in", 
    duration = "1500"),
  ),
fluidRow(
  aos(
    element = fluidRow(p("•"), 
                       align = "center", style = "height: 0.5; padding: 10px 10px;
                       font-size:200px;"), 
    animation = "fade-in", 
    duration = "1500"),
  ),
fluidRow(
  aos(
    element = fluidRow(p("•"), 
                       align = "center", style = "height: 0; padding: 10px 10px;
                       font-size:275px;"), 
    animation = "fade-in", 
    duration = "1500"),
),




    br(), br(), br(), br(), br(), br(), br(),    br(), br(), br(), br(), br(), br(), br(),
        



#fluidRow(
#  aos(
#    element = fluidRow(h1(tags$b("In recent years three extensive QTL investigations have highlighted 
#                          significant variants in individuals with elevated Neutrophil Count 
#                          and C-Reactive Protein. 
#                          (Astle et al.,2016) (Han et al.,2020) (Ligthart et al.,2018)")), 
#                       align = "center", style = "height: 100; padding: 10px 10px;
#                                                  font-size:40px;
#                                                  background-color: rgba(7, 43, 62, 0.9);"), 
#    animation = "zoom-in", 
#    duration = "2000")
#    ),
#br(),br(),br(),br(),br(),br(),br(),br(),


fluidRow(style = "padding: 5px,5px,5px,5px;",
  aos(
    element = fluidRow(h1(tags$b(tags$u("Highlights")),align = "center"),br(),
                       h2("•  Many inflammatory diseases (IFDs) share altered regulation of the same inflammatory genes and proteins   "), br(),
                       h2("•  Elevated neutrophil count (NC) and c-reactive protein (CRP) have been suggested as biomarkers to represent de-regulated inflammation in multiple IFDs "), br(),
                       h2("•  Data from multiple QTL studies investigating NC and CRP was integrated with multiple inflammatory disease GWAS studies"), br(),
                       h2("•  Significant variants from these datasets were mapped across the", tags$i("HLA-DRB1"),"gene region"), br(),
                       h2("•  These variants may be acting as core disease related haplotypes in multiple IFDs"),br(),
                        align = "left", style = "height: 100; padding: 10px 10px 10px 10px;
                                          background-color: rgba(7, 43, 62, 0.9);
                                              font-size50px;"), 
    animation = "fade-in",
    duration = "3000")
  ),

br(),



br(),br(),

#AB & LAY
fluidRow(
        aos(
        element = fluidRow(id = 'ab', 

                         column(6, style='
                                          border-left: 2px solid black;
                                          border-bottom: 2px solid black;
                                          font-size:25px;
                                          border-top: 2px solid black',
                          h1(tags$b("Abstract"), align = 'center'),
                          h2(tags$u("Background"), align = 'left'),
                          p("Inflammatory diseases (IFDs) cover a wide array of illnesses such as Crohn’s disease, 
                            diabetes and dermatitis. Many IFDs share altered regulation both at the gene and pathway level.
                            Many biomarkers have been proposed to represent this altered regulation. Two of the most promising biomarkers include 
                            elevated neutrophil count (NC) and C-reactive protein levels (CRP). In recent years, three extensive quantitative trait loci (QTL) investigations (Astle et al.,2016; 
                            Ligthart et al.,2018; and Han et al.,2020) have highlighted significant genetic variants in individuals with elevated NC and CRP.",align = 'left'),
                                                        
                          h2(tags$u("Methods"), align = 'left'),
                          p("This study integrated molecular and disease data sets with known genetic variants 
                            associated with IFDs. A total of 11 studies, including 870,004 European individuals,
                            were analysed. Lead single nucleotide polymorphisms (SNPs) were used to generate 
                            subnetworks of highly significant genes. Enrichment analysis identified overrepresented 
                            classes of genes present in each subnetwork . Genetic variants near genes which 
                            were present in both the enrichment analysis of the biomarkers and the subnetworks 
                            of IFDs were analysed using colocalisation based on genomic overlap. Variants were 
                            queried against enhancers (from the GeneHancer database) and predicted transcription 
                            factor binding sites (from the JASPAR database).",align = 'left'),
                            
                          h2(tags$u("Results"), align = 'left'),
                          p("Genes found in the NC and CRP subnetworks gave strong enrichment for type I diabetes mellitus 
                            (T1D) with adjusted p-values of 4.5x10-2 and 3.1x10-2 respectively. Additionally, six 
                            highly significant variants found across multiple QTL and genome-wide association studies 
                            (GWAS) map to the", tags$i("HLA-DRB1"), "gene region. Colocalisation identified five of these variants 
                            significantly overlapping with enhancer or promoter regions (p < 0.05). Furthermore, a 
                            predicted CTCF binding site overlaps with the rs9271588 variant (with a p-value of 0.049), 
                            suggesting that CTCF could be insulating repressive gene regulation 
                            across", tags$i("HLA-DRB1"), "the region.",align = 'left'),
                          
                          h2(tags$u("Discussion"), align = 'left'),
                          p("Network, enrichment and colocalization analyses show that elevated levels of NC and 
                            CRP may be suitable biomarkers of high-risk genetic variants in the", tags$i("HLA-DRB1"), "region. 
                            These variants may be acting as core alleles which contribute to the de-regulation of
                            gene expression in immune and inflammatory responses.",align = 'left')
                              
                            ),

                         column(6, style='border-right: 2px solid black;
                                          border-top: 2px solid black;',
                                          
                          h1(tags$b("Lay summary"), align = 'center'),
                          h2(tags$u("Overview of topic"), align = 'left'),
                          p("What do diabetes, Crohn’s disease, Alzheimer’s disease, coronary heart disease and liver cirrhosis all have in common?
                            All these diseases can arise from an inappropriate inflammatory response."),

                            p("Inflammation is the immediate, general immune response to damaged or stressed tissues. 
                              Inflammatory diseases (IFDs) refers to a list of illnesses which are caused when the usual 
                              inflammatory response is de-regulated in some way."), 
                          h2(tags$u("This investigation"), align = 'left'),
                           p("Recent clinical studies have shown that patients with different IFDs often have altered levels of 
                              certain immune cells and proteins in their blood. These are referred to as biomarkers and they 
                              can indirectly indicate a risk of someone having a particular IFD."),
                            
                            p("This investigation interrogated elevated neutrophil count (NC) and elevated 
                          C-reactive protein (CRP) levels as viable biomarkers for different IFDs. By analysing 
                          population data of 870,004 individuals, this study found that elevated NC and CRP 
                          could be suitable biomarkers for type 1 diabetes. Furthermore, this analysis highlights a group of genes which have
                          high significance in multiple IFDs and suggests a mechanism for how their expression is altered in IFD patients."), 
                          align = "left",
                          style = 'font-size:25px'),
                         
                         ),
          align = "center", 
      animation = "fade-in", 
      duration = "1500"),
),
 
br(),br(),


     
   ),



#Background
  tabPanel(title = "Background",

#Header for background   
fluidRow(h1("Background", 
          align = "center", style = "height: auto; padding: 75px 75px;
                                      font-size:75px;background-color: rgba(7, 43, 62, 0.9);")
            ), 




fluidRow(id = 'write_backg', style = "height:auto; padding-left: 20px;
                                      padding-right: 20px;
                                      font-size:20px;",
         
         h1(tags$b("Aims of this investigation"), align = "left"),
        br(),
        p("•  Integrate data from multiple quantitative trait locus", 
          
          bs_button(inputId = "pop", label = "(QTL)") %>% 
            bs_embed_tooltip(title = "A locus which correlates with variation of a quantitative trait"), 
      
          "and genome-wide association studies", 
        
          
          bs_button(inputId = "pop", label = "(GWAS)") %>% 
            bs_embed_tooltip(title = "An observational study comparing genetic variants present in a population
                             of individuals with a binary trait"),
        
       
                align = "left"),
         br(),
         p("•  Investigate the reported",
           bs_button(inputId = "pop", label = "SNPs") %>% 
             bs_embed_tooltip(title = "A substitution of a single nucleotide at a specific position"),
           
           "of the disease related genes in relation to relevant inflammatory diseases (IFDs)", align = "left"), 
         br(),
          p("•  Identify gene regions which correlate with a general de-regulated inflammatory response", 
              
                      
                align = "left"),
        br()
   
), 

  fluidRow(id = 'write_backg', style = "height:auto; padding-left: 20px;",
            h1(tags$b("Background"), align = "left"),


            br()),
#Writing for back
  

fluidRow( id = 'write_backg', style = "height:auto; padding-left: 20px;
                                                      padding-right: 20px;
                                                      font-size:20px;",

            p("Inflammatory diseases (IFDs) encompass a large array of illnesses 
                including diabetes,", 
              bs_button(inputId = "pop", label = "Crohn’s Disease,") %>% 
              bs_embed_tooltip(title = "A common form of Inflammatory bowel disease"),
               
              bs_button(inputId = "pop", label = "asthma") %>% 
              bs_embed_tooltip(title = "Condition of narrowing /swelling of airways"),
              
                "and many others. 
                Inflammation is a general protective response to address 
                damaged tissue in the body. Consequently, many IFDs share 
                altered regulation both at the gene and pathway level. 
                Different", 
               
              
              bs_button(inputId = "pop", label = "biomarkers", class = "info") %>% 
                bs_embed_tooltip(title = "A characteristic by which a disease is indicated"),
              
              "have been proposed to represent 
                this altered regulation",
              
              
              
              tags$a(href="https://www.jci.org/articles/view/18921",target="_blank",
                     tags$i("(Pepys et al.,2003)")),
              
              
               
              tags$a(href="https://www.annualreviews.org/doi/abs/10.1146/annurev-immunol-020711-074942",target="_blank",
                     tags$i("(Amulic et al.,2012).")),
              
              "In the last decade, however, there has been contradicting evidence from 
               clinical studies for suggested blood biomarkers as to whether they are 
               appropriate indicators of inflammatory diseases given their high specificity
               but low sensitivity.", 
            br(),br()),
            p("This analysis will focus on two candidate biomarkers: elevated neutrophil count 
              (NC) and elevated levels of C-reactive protein (CRP). ", align = 'left'),
            br(),
            h2(tags$u("Elevated neutrophil count"), align = "left"),
            p("",
              
              bs_button(inputId = "pop", label = "Neutrophils") %>% 
              bs_embed_tooltip(title = "Most abundant type of white blood cells"),
              
              "are often the first immune cells to 
              respond to damaged or infected sites and play a pivotal 
              role in production of activators of the innate immune 
              system, such as",
              
              
              bs_button(inputId = "pop", label = "proinflammatory cytokines") %>% 
              bs_embed_tooltip(title = "Signaling molecules secreted from immune cells"),
              
              ". Proinflammatory 
              cytokines induce activation of interleukins", 
              
              
              bs_button(inputId = "pop", label = "(ILs),") %>% 
                bs_embed_tooltip(title = "Family of glycoproteins which regulate differentiation and cell growth"),
              
              "tumour 
              necrosis factors", 
              
              bs_button(inputId = "pop", label = "(TNFs),") %>% 
              bs_embed_tooltip(title = "Family of proteins which regulate programmed cell death"),
              
              "interferons", 
    
              
              bs_button(inputId = "pop", label = "(IFNs)") %>% 
              bs_embed_tooltip(title = "Named for their ability to 'interfere' with viral replication"),

              "and granulocyte-macrophage colony-stimulating factor", 
           
              bs_button(inputId = "pop", label = "(GM-CSF)") %>% 
              bs_embed_tooltip(title = "Glycoprotein which induces bone marrow to produce granulocytes"),            
              
              tags$a(href="https://www.nature.com/articles/nri3399",target="_blank",
                     tags$i("(Kolaczkowska et al.,2013).")),
              
              "An elevated count of neutrophils 
              has been suggested to indicate a general increase in an 
              individual’s inflammatory response.", align = 'left'),
          
              br(),

              p("One meta-study analysing 20 independent publications noted 
              an increase in white blood cell counts in patients with type II 
              diabetes", 

               
              bs_button(inputId = "pop", label = "(T2D)") %>% 
              bs_embed_tooltip(title = "Disease characterised by a loss of peripheral responses to insulin"),
              
               

               
              tags$a(href="https://journals.plos.org/plosone/article%3Fid%3D10.1371/journal.pone.0013405",target="_blank",
                     tags$i("(Gkrania-Klostas et al.,2010).")),              

              "Furthermore, a seminal meta-analysis in 2004 found a 
              correlation of elevated NC in 1,764", 

               
              bs_button(inputId = "pop", label = "coronary heart disease") %>% 
              bs_embed_tooltip(title = "Narrowing of the coronary artery"),
              
              "patients",
              
              
              tags$a(href="https://academic.oup.com/eurheartj/article/25/15/1287/510024",target="_blank",
                     tags$i("(Wheeler et al., 2004).")),  
               
              
              
              "Interestingly, some 
              more recent studies have suggested that a reduced number 
              of circulating neutrophils could be indicative of type I diabetes",

              
              bs_button(inputId = "pop", label = "(T1D)") %>% 
              bs_embed_tooltip(title = "Disease characterised by a loss of insulin production"),

              tags$a(href="https://www.thieme-connect.com/products/ejournals/html/10.1055/s-0032-1331226",target="_blank",
                     tags$i("(Harsunen et al., 2013)")), 
              
              tags$a(href="https://diabetes.diabetesjournals.org/content/62/6/2072.short",target="_blank",
                     tags$i("(Valle et al., 2013).")), 
              
              align = 'left'),
              br(),
              p("However, other studies have suggested that NC’s use as a 
              biomarker is overestimated. One investigation monitored 
              a panel of blood biomarkers in patients with chronic obstructive pulmonary 
              disease", 
              
              
              bs_button(inputId = "pop", label = "(COPD)") %>% 
              bs_embed_tooltip(title = "A group of lung conditions that cause breathing difficulties such as emphysema"),

              "and found NC to provide little use 
              as an indicator of risk", 

            
              tags$a(href="https://www.atsjournals.org/doi/full/10.1164/rccm.201110-1792OC",target="_blank",
                  tags$i("(Celli et al., 2012).")), 
              

              "A separate study screened multiple blood count parameters of 164 
              asthma patients and found that NC gave the weakest indication 
              of the phenotype", 
              
              
              tags$a(href="https://onlinelibrary.wiley.com/doi/full/10.1111/cea.12345?casa_token=yrxWzWjRJm8AAAAA%3AI-qGP47BoepyZn5AkfUfwrcMnd3xZHmWP7P0E1N-D35S9Rd2ve9HDy-_h0TO2FA3Irjfu7akr056kN4",target="_blank",
                     tags$i("(Zhang et al.,2014).")), 

          align = 'left'),
           br(),
            h2(tags$u("Elevated c-reactive protein"), align = "left"),
           p("Commonly used in clinical settings as a biomarker for coronary 
            heart disease, CRP is synthesised in the liver. CRP production 
             is known to be stimulated by other inflammatory biomolecules such 
             as interleukin-6", 
            
             
             bs_button(inputId = "pop", label = "(IL-6),") %>% 
             bs_embed_tooltip(title = "Member of the interleukin protein family"),
            
            "tumour Necrosis Factor", 
            
            bs_button(inputId = "pop", label = "(TNFs),") %>% 
            bs_embed_tooltip(title = "Family of proteins which regulate programmed cell death"),
            
            "and interleukin-1", 

             bs_button(inputId = "pop", label = "(IL-1).") %>% 
             bs_embed_tooltip(title = "Member of the interleukin protein family"),
            
      
             "CRP’s main inflammatory function is to 
             activate the complement system. The system is responsible for 
             increasing the efficiency of",
           
  
            bs_button(inputId = "pop", label = "phagocytosis.") %>% 
              bs_embed_tooltip(title = "Mechanism used by white blood cells to engulf particles"), 

            "CRP’s  short", 

              
             bs_button(inputId = "pop", label = "half-life") %>% 
             bs_embed_tooltip(title = "Time taken for a protein to fall to half its original concentration"),  
            
            "(of 19 hours) makes it an ideal biomarker to 
             give clinicians up to date information about a patient’s current
             general inflammation", 
            
            
            tags$a(href="https://link.springer.com/article/10.1385/IR:24:2:163",target="_blank",
                   tags$i("(Mortensen et al.,2001).")),
            
            align = 'left'),
          br(),
          p("Clinical studies have indicated that elevated CRP 
            levels may have application in inflammatory diseases 
            other than coronary heart disease. As early as 1999 it 
            has been documented that", 

            bs_button(inputId = "pop", label = "(T1D)") %>% 
            bs_embed_tooltip(title = "Disease characterised by a loss of insulin production"),
            
            "patients record elevated CRP compared to healthy controls",
            
            
            tags$a(href="https://link.springer.com/article/10.1007/s001250051162",target="_blank",
                   tags$i("(Schalkwijk, et al., 1999).")),
            
            "Furthermore, elevated levels 
            of CRP has been reported to give indication that Inflammatory bowel disease", 


            
            bs_button(inputId = "pop", label = "(IBD)") %>% 
            bs_embed_tooltip(title = "Group of disorders that involve chronic inflammation of the digestive tract"),
             
            "patients may require a", 

            
            
            bs_button(inputId = "pop", label = "colectomy") %>% 
            bs_embed_tooltip(title = "Surgical removal of all or part of the colon"),
      
            
            tags$a(href="https://academic.oup.com/ibdjournal/article/10/5/661/4718266",target="_blank",
                   tags$i("(Vermeire et al., 2004).")),
            
            "Also, clinical 
            studies screening asthma patients for elevated CRP levels 
            have reported significant correlations. One study accounting 
            for CRP levels and body mass index", 

            
            bs_button(inputId = "pop", label = "(BMI)") %>% 
            bs_embed_tooltip(title = "Weight in kilograms divided by height in meters squared"),

            "in asthma patients found elevated 
            CRP levels to be a separate risk factor to increased BMI",
            
             
            tags$a(href="https://www.sciencedirect.com/science/article/pii/S0009898108004658?casa_token=kIyquuW85YsAAAAA:3dJnOs-uxpVa6K3pwDACa4nJ6z_yTIh0Syn_GgTDDioF43FBzOysQ7zkpoREehiNFM3HySeo_A",target="_blank",
                   tags$i("(Kasayama et al., 2009).")),
            
            
            "Furthermore, a study which screened 
            asthma patients for elevated CRP and IL-6 levels found an 
            increased risk of more severe asthma cases with patients 
            recording high levels of CRP and IL-6",

          
          
          tags$a(href="https://www.sciencedirect.com/science/article/pii/S0012369212603924?casa_token=ChNbACFEDXQAAAAA:h8K9DG2NFsg4zKGQ9v-cbWEgNK7QysdSLyCYz6FBVHQAwdn7KbjXknyoQpCeVC2bCiQK-DDBTg",target="_blank",
                 tags$i("(Wood et al.,2012).")),
          
          
          align = 'left'),
         br(),
         p("However, some recent investigations have suggested that 
            CRP may not be as relevant a biomarker as previously suggested.
           A recent meta-analysis published in 2018 suggests a 
           “rethinking of CRP” given that one", 

            
            bs_button(inputId = "pop", label = "isoform") %>% 
            bs_embed_tooltip(title = "Functionally similar proteins that have a similar but not identical amino acid sequence"),

           "of the protein
           has been shown to be routinely produced even when general 
           inflammation is not occurring",

         
        
         tags$a(href="https://www.sciencedirect.com/science/article/pii/S0889159118300266?casa_token=vXN9QTbBVe4AAAAA:9f5C2OPiN9AowNjorbstp9n_mbwuLF-KT9G9drJjspB17jkw3ZefaVT7fbkEkmpSrPldgBm4fA",target="_blank",
               tags$i("(Del Giudice and Gangestad 2018).")),
        
         align = 'left'),
        br(), 
        h2(tags$u("GWAS and disease related genetic variants"), align = "left"),
        p("Genome wide association studies have proven to be an effective method to 
          identify single nucleotide polymorphisms", 
          

          bs_button(inputId = "pop", label = "(SNPs)") %>% 
            bs_embed_tooltip(title = "A substitution of a single nucleotide at a specific position"),

"present in a significant 
          fraction of individuals carrying a disease.",



bs_button(inputId = "pop", label = "Colocalising ") %>% 
  bs_embed_tooltip(title = "Statistical tests to determine if a given SNP is localised to a region
                   of interest by chance"),


          "the locus of an SNP with known regulatory elements of the nearest gene can be done to postulate 
          mechanisms of altered gene expression, providing insight into regulatory 
          mechanisms which underpin a disease",
          
          
          tags$a(href="https://www.nature.com/articles/s41598-019-54514-2",target="_blank",
                 tags$i("(Buxton et al.,2019).")),

        "An in-depth analysis 
          into variants reported from individuals with elevated NC and CRP is yet to be conducted.",
        
          align = 'left')
        
          )
),

 
#METHODS
tabPanel(title = "Methods",
         
         
         fluidRow(h1("Methods", 
                     align = "center", style = "height: auto; padding: 75px 75px;
                     font-size:75px;background-color: rgba(7, 43, 62, 0.9);")
         ), 
         
         #Writing for meth
         fluidRow(id = 'write_backg', style = "height:auto; padding-left: 20px;
                                                      padding-right: 20px;
                                                       font-size:20px;",
                  h2(tags$u("Subnetwork generation"), align = "left"),
                  p(

            bs_button(inputId = "pop", label = "Subnetwork analysis") %>% 
            bs_embed_tooltip(title = "A gene analysis technique which combines experimental data sets with interaction networks"),

                    "was chosen in order to exclusively
                    isolate the most significant trait related genes
                    and their likely interactions. This was necessary for 
                    the later step of identifying high risk gene regions 
                    using", 
            
            
            
            
            bs_button(inputId = "pop", label = "colocalisation analysis.") %>% 
            bs_embed_tooltip(title = "Statistical tests to determine if a given SNP is localised to a region
                                        of interest by chance")
            
    
            ),
                  br()),
                  
#Writing for methods
  fluidRow(id = 'write_backg', style = "height:auto; padding-left: 8px;
                                                      padding-right: 8px;
                                                      font-size:20px;",
     
 
            column(6,p( 

                      
            bs_button(inputId = "pop", label = "QTL") %>% 
            bs_embed_tooltip(title = "A locus which correlates with variation of a quantitative trait"),

            
                      "and", 

                    
            bs_button(inputId = "pop", label = "GWAS") %>% 
            bs_embed_tooltip(title = "An observational study comparing genetic variants present in a population
                                  of individuals with a binary trait"),
            
                    "summary statistics of eight
                      studies (shown in Table 1) were put 
                      through a lead",
            
                         bs_button(inputId = "pop", label = "SNP") %>% 
              bs_embed_tooltip(title = "A substitution of a single nucleotide at a specific position"),

"processing pipeline (see pipeline architecture). The 
                      workflow of the analysis is summarised in Figure 1.", align = 'left'),
            br(),
            
            bsModal(id = "tbl1", title = tags$i("Table 1 .Table to summarise studies analysed in this investigation."),trigger = "go" ,body = img(src='www/table1.png',
                                                                              height = 'auto', width = '100%'), size = "large"),
            
            bs_button("Table 1", button_type = 'info') %>%
              bs_attach_modal(id_modal = "tbl1"),
            
            br(),br(),
            
            p("Lead SNPs were wrangled into an appropriate format 
              to input into the eXploring Genomic Relations software", 
              
              
            bs_button(inputId = "pop", label = "(XGR)") %>% 
            bs_embed_tooltip(title = "A downstream discovery R package for genomic summary data."),

              "package", 
            
            tags$a(href="https://genomemedicine.biomedcentral.com/articles/10.1186/s13073-016-0384-y",target="_blank",
                   tags$i("(Fang et al., 2016).")),
              
             "The minimum unit increase for each biomarker is shown in Table 2. The 
              elevated CRP threshold was a 0.010 unit increase in the 
              Han et al 2020 study and 0.020 in the Ligthart et al., 
              study. To control for this, only lead SNPs which were 
              reported with a unit increase of 0.020 or higher were 
              used in this analysis.", align = 'left'),
            br(),
            bsModal(id = "tbl2", title = tags$i("Table 2. Table to show the minimum unit increase 
                                                for the associated variant of a biomarker to be included in this analysis.") ,trigger = "go" ,body = img(src='www/table2.png',
                                                                              height = 'auto', width = '100%'), size = "large"),
            
            bs_button("Table 2", button_type = 'info') %>%
              bs_attach_modal(id_modal = "tbl2"),
            br(),br(),
            p("Genes located within +/- 15kbp of the input SNPs were then identified 
              and used to generate a confidence score based on 
              the significance value of the SNP and the genomic distance to 
              the closest gene. In cases where more than one gene was within 
              15kbp of a SNP, the closest gene to the SNP was chosen. 
              From these scores, the maximum 
              scoring subnetwork was determined. XGR included less 
              significant genes in the subnetwork if they were acting 
              as necessary",
         
              bs_button(inputId = "pop", label = "linkers.") %>% 
              bs_embed_tooltip(title = "Nodes which bridge modules together"),

              "In this network, the vertices 
              represent the closest gene to the lead SNP and the edges 
              describe a significant interaction between the two. 
              Only interactions with a p-value of 0.001 or lower were 
              used when generating the subnetwork. This ensured that 
              only the most significant genes were taken forward for",
              
              
              
              bs_button(inputId = "pop", label = "enrichment analysis.") %>% 
                bs_embed_tooltip(title = "A method to identify classes of genes 
                                 that are over-represented in a dataset"),
               align = 'left'),

                    
            
            h2(tags$u("Enrichment analysis of nodes"), align = "left"),
            p("Enrichment analysis was performed in order 
              to find IFD related traits which correlate to the 
              genes present in each subnetwork.", align = 'left'),
            br(),
            p("Nodes present in the subnetwork (the closest genes 
              to the lead SNP) were put through", 
              
              
              bs_button(inputId = "pop", label = "enrichment analysis") %>% 
                bs_embed_tooltip(title = "A method to identify classes of genes 
                                 that are over-represented in a dataset"),
              
              "to find common pathways and diseases. This was done using", 
              
              
              
              bs_button(inputId = "pop", label = "gprofiler2") %>% 
                bs_embed_tooltip(title = "An R package for gene functional enrichment analysis and visualisation"),
              
              
              tags$a(href="http://cran.irsn.fr/web/packages/gProfileR/gProfileR.pdf",target="_blank",
                     tags$i("(Reimand et al.,2019)")),
              
              
              
              "which performs functional enrichments of gene lists. The list of 
              genes from each subnetwork were input separately and queried 
              against each of the 11 databases shown in Table 3. 
              The", 
              
              
              bs_button(inputId = "pop", label = "universe") %>% 
                bs_embed_tooltip(title = "The dataset which includes all points which could be relevant 
                                 to the investigation"),
              
              
              "used in each enrichment was all annotated 
              genes across the genome. This was done to account for different cell types being sequenced across the different QTL and GWAS studies.
              Enrichment significance was corrected for using a", 
              
              
              
              bs_button(inputId = "pop", label = "Bonferroni test") %>% 
                bs_embed_tooltip(title = "A form of multiple comparison test"),
              
              "at a threshold 
              of p < 0.05 to minimise the number of false positives.", align = 'left'),
       
            br(),  
            bsModal(id = "tbl3", title = tags$i("Table 3. Table to summarise all the databases enrichment analysis was performed on."),
                                trigger = "go" ,body = img(src='www/table3.png',
                                                                                                                                                                height = 'auto', width = '100%'), size = "large"),
            bs_button("Table 3", button_type = 'info') %>%
              bs_attach_modal(id_modal = "tbl3"),
            
            br(),br(),
            
            p(tags$i("Click the dummy subnetwork to create your own gene interaction
              subnetwork"), align = 'left'),
            
            bsModal("dN", "Dummy Subnetwork", "go", size = "large", 
                    htmlOutput("dummy_N")),
            bs_button("Dummy subnetwork", align = "center", button_type = "info") %>%
              bs_attach_modal(id_modal = "dN"),
          
            
            h2(tags$u("Colocalisation of high-risk variants"), align = "left"),
            
            p("Once gene regions which correlated strongly to 
            an overactive inflammatory response were identified, 
              the associated variants were mapped onto the", 
              
              
              
              bs_button(inputId = "pop", label = "hg38 genome.") %>% 
                bs_embed_tooltip(title = "Homo sapiens genome assembly GRCh38"),
              
              
              bs_button(inputId = "pop", label = "Colocalisation analysis") %>% 
                bs_embed_tooltip(title = "Statistical tests to determine if a given SNP is localised to a region
                                 of interest by chance"),
              
              "was performed across 
              the gene region where the variants were mapped to. 
              This investigation used the Genomic Association 
              Tester", 
              
              
              bs_button(inputId = "pop", label = "(GAT)") %>% 
              bs_embed_tooltip(title = "Tool for computing the significance of overlap between multiple sets of genomic intervals"),
              
              
              "package which estimates the expected 
              number of base-pair overlaps you would observe by 
              chance and generates significance scores based on 
              the fold difference between the observed overlaps", 
              
              
              
              tags$a(href="https://academic.oup.com/bioinformatics/article/29/16/2046/204634",target="_blank",
              tags$i("(Heger et al.,2013).")),

            
            ),
            
            ),

           
            br(),
            
            use_bs_tooltip(),
           
         
        
             column(6, br(), img(src='www/figure1.png', align = "right"),
            br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),
            br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),
            br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),br(),
              p(tags$i("Figure 1. Flow diagram of the steps of analysis.
                SNPs from QTL and GWAS summary statistics were wrangled 
                and input to XGR. A subnetwork of highly significant gene 
                interactions was then created. The nodes of each subnetwork 
                were then queried against 11 databases. From these enrichments, 
                gene regions were identified that strongly correlated to 
                the IFDs and Biomarkers. Variants across all studies were 
                then mapped to these regions and put through colocalization analysis."), align = "right", style = 'font-size:18px;'),
                
             ),
                    
                    
                        
  ),
          
fluidRow(id = 'write_backg', style = "height:auto; padding-left: 20px;
                                                      padding-right: 20px;
         font-size:20px;",
         
         
         "Each variant was assigned a 2kbp region (+/- 1000bp from the recorded variants 
            loci). This accounted for the possibility that the 
         true variants had been inaccurately mapped. The", 
         
         bs_button(inputId = "pop", label = "universe") %>% 
           bs_embed_tooltip(title = "The dataset which includes all points which could be relevant 
                            to the investigation"),
         
         "was defined as all nucleotides spanning the gene region 
         of interest. This ensured that impossible overlaps (in 
         other regions) were not causing the significance 
         to be penalised. The SNPs were colocalized against 
         known enhancer regions from the", 
         
         
         bs_button(inputId = "pop", label = "GeneHancer") %>% 
           bs_embed_tooltip(title = "Database of human regulatory elements"),
         
         "database", 
         
         tags$a(href="https://academic.oup.com/database/article/doi/10.1093/database/bax028/3737828",target="_blank",
                tags$i("(Fishilevich et al.,2017)")),
         
         
         "and predicted transcription  factor binding sites from", 
         
         
         bs_button(inputId = "pop", label = "JASPAR") %>% 
           bs_embed_tooltip(title = "Database of curated and non-redundant 
                            transcription factor binding profiles"),
         
         
         tags$a(href="https://academic.oup.com/nar/article/48/D1/D87/5614568",target="_blank",
                tags$i("(Fornes et al.,2020).")),
         
         
         "This was done to achieve a general, non-tissue specific, 
         inference on the possible regulatory effects of 
         each variant. Due to the multiple tissue types 
         sequenced across the studies, overlaying tissue specific", 
         
         
         bs_button(inputId = "pop", label = "Hi-C") %>% 
           bs_embed_tooltip(title = "Chromosome conformation capture technique"),
         
         "and chromatin immunoprecipitation", 
         
         bs_button(inputId = "pop", label = "(ChIP-seq)") %>% 
           bs_embed_tooltip(title = "Method to analyse protein interactions with DNA"),
         
         
         "data would be inappropriate. Regardless, 
         the lack of tissue specificity is a short coming in the analysis.", align = 'left'),
      
   
         
        
        ),


#RESULTS
#NC

           
tabPanel(title = "Neutrophil Count",


fluidRow(h1("Neutrophil Count Analysis", 
             align = "center", style = "height: auto; padding: 75px 75px;
             font-size:75px;background-color: rgba(7, 43, 62, 0.9);")
 ), 
 
#Writing for Results NC
 fluidRow(id = 'write_backg', style = "height:auto; padding-left: 20px;",
        
          h2(tags$u("Summary"), align = "left")
 ),
          
 
  fluidRow(id = 'write_backg', style = "height:auto; padding-left: 20px;
                                                      padding-right: 20px;
                                                      font-size:20px;",
                                                      

            p("The lead SNPs from",
               
              tags$a(href="https://www.sciencedirect.com/science/article/pii/S0092867416314635",target="_blank",
                     tags$i("Astle et al.,2018")), 
              

                "were input to the lead SNP processing pipeline which output 
                    a gene interaction",
            
            bs_button(inputId = "pop", label = "subnetwork") %>% 
              bs_embed_tooltip(title = "A gene analysis technique which combines experimental 
                               data sets with interaction networks"),
              "and an", 

              bs_button(inputId = "pop", label = "enrichment") %>% 
                bs_embed_tooltip(title = "A method to identify classes of genes 
                                 that are over-represented in a dataset"),
              "output. A total of 213 gene-gene interactions were generated 
                from XGR’s subnetwork maker and 110 significant 
                enrichments were found across the 11 databases. Noteworthy 
                enrichments found include",
              
            
              bs_button(inputId = "pop", label = "T1D") %>% 
                bs_embed_tooltip(title = "Disease characterised by a loss of insulin production"),

              "and", 

             
            bs_button(inputId = "pop", label = "Psoriasiform dermatitis.") %>% 
              bs_embed_tooltip(title = "Group of skin disorders which histologically mimic psoriasis"),

              align = 'left'),

            br(),
            p("The central node in the subnetwork is", 
              
              
              
              bs_button(inputId = "pop", label = "Ubiquitin A-52,") %>% 
                bs_embed_tooltip(title = "highly conserved protein responsible for marking cellular proteins for to be degraded"),
              
              "a highly occurring protein which was 
              used as an insignificant",

              bs_button(inputId = "pop", label = "linker") %>% 
                bs_embed_tooltip(title = "Nodes which bridge modules together"),
              "node by XGR in 
              the subnetwork construction (Figure 2).", align = 'left'),
            
            br()),

fluidRow(id = 'write_backg', align = ("center"),
         bsModal("NN", "Neutrophil Subnetwork", "go", size = "large", 
                 htmlOutput("NC_N")),
         bs_button("Neutrophil count subnetwork", button_type = "info") %>%
           bs_attach_modal(id_modal = "NN"),

p(tags$i("Figure 2. Subnetwork plot generated by XGR showing the 
               highest scoring subnetwork of genes found from the NC lead 
          SNP list. Hovering over a node will display the gene’s significance 
          score from XGR. All nodes shown here were included in the enrichment 
          analysis. Nodes are colour coded according to their highest 
          scoring enrichment trait from gprofiler2. Highlight each group 
          of genes by using the dropdown on the left-hand side"), align = "center", style = "font-size: 18px;
                                                                                        padding-left: 20px;
                                                                                        padding-right: 20px"),
),

  
  fluidRow(id = 'write_backg', style = "height:auto; padding-left: 20px;
                                                            padding-right: 20px;
                                                            font-size:20px;",
           h2(tags$u("Biological validation"), align = "left"),
           br(),
           p("In order to confirm the pipeline output was biologically 
            relevant to this investigation it was important to 
             examine the total enrichment output. 49 out of the 
             110 enrichments were related to the immune response (Figure 3). 
             Encouragingly, the enrichment analysis in the Reactome 
             database showed strong evidence to suggest that the 
             subnetwork contained genes involved in a deregulated 
             innate immune response. These included,",
             
             bs_button(inputId = "pop", label = "cytokine ") %>% 
               bs_embed_tooltip(title = "Signaling molecules secreted from immune cells"),
             "signalling which reported an adjusted p-value of 1.09x10-6 and a 
             general immune response (adjusted 
             p-value 2.09x10-4). Highly significant adaptive 
             immune responses were also recorded. The GO:BP 
             database recorded gene enrichments for",
              
             bs_button(inputId = "pop", label = "IFN-gamma") %>% 
               bs_embed_tooltip(title = "Named for their ability to 'interfere' with viral replication"),
             "signalling and the MHC complex with adjusted p-values 
             of 4.14x10-7 and 3.0x10-3 respectively. This was 
             encouraging as it demonstrated this analysis was
             capable of reproducing previously confirmed enrichments.", align = ('left')),

        br(),br(),

  ),

fluidRow(h2(tags$u("IFD related enrichments found in elevated NC"), align = "left",style = " padding-left: 20px;
                                                                                          padding-right: 20px"),
  htmlOutput("NC_E"), id = 'write_backg', p("Neutrophil Count Enrichment Plot"), align = ('center'),
         
         p(tags$i("Figure 3. Manhattan style enrichment plot generated by grofiler2 showing 
                significant enrichments found across 11 databases for genes present in the NC subnetwork.
                Each enrichment is represented as a dot and colour coded based on which database 
                it was found in. The negative log of the adjusted p-values are plotted on the y-axis. Individual 
                p-values for each enrichment can be seen when you hover over a plotted point."),
                align = "center", style = "font-size: 18px;
                             padding-left: 20px;
                             padding-right: 20px"),
                
),
 
fluidRow(id = 'write_backg', style = "height:auto; padding-left: 20px;
                                                    padding-right: 20px;
                                                    font-size:20px;",
          
 
          p("Notable enrichments found in this analysis include T1D and
            Psoriasiform dermatitis. Elevated NC enrichment reported members 
            of the Human Leukocyte Antigen",
  
            bs_button(inputId = "pop", label = tags$i("(HLA)")) %>% 
              bs_embed_tooltip(title = "Group of related genes coding for proteins present in the major histocompatibility complex"),
            "family of genes. These code for proteins 
            which make up the major histocompatibility complex",
          
            bs_button(inputId = "pop", label = "(MHC).") %>% 
              bs_embed_tooltip(title = "Tissue-antigen that allows for autorecognition"),
            "Shown in Table 4, the 
            same genes highlighted from the enrichment which contribute to T1D also 
            contribute to Psoriasiform dermatitis. The adjusted p-values for both 
            show weak correlations with both diseases.", align = ('left')), 
            

bsModal(id = "tbl4", title = tags$i("Table 4. Table to show relevant IFD 
                          enrichment and the corresponding genes 
                          found in the NC subnetwork"),trigger = "go" ,body = img(src='www/table4.png',
                                                                  height = 'auto', width = '100%'), size = "large"),

bs_button("Table 4",button_type = 'info') %>%
  bs_attach_modal(id_modal = "tbl4")  
                 
)

),


##CRP
tabPanel(title = "CRP",
         
         fluidRow(h1("C-Reactive Protein Analysis", 
                     align = "center", style = "height: auto; padding: 75px 75px;
                     font-size:75px;background-color: rgba(7, 43, 62, 0.9);")
         ), 
         
         
         #Writing for Results NC
         fluidRow(id = 'write_backg', style = "height:auto; padding-left: 20px;",
                  
                  h2(tags$u("Summary"), align = "left")
         ),
         
         
         fluidRow( id = 'write_backg', style = "height:auto; padding-left: 20px;
                   padding-right: 20px;
                   font-size:20px;",
                   
                   
                   p("The lead SNPs from", 
                     
                     tags$a(href="https://link.springer.com/article/10.1007/s10654-019-00598-z",target="_blank",
                            tags$i("Han et al.,2020 ")),
                     
                     "and",
                      
                     tags$a(href="https://www.sciencedirect.com/science/article/pii/S0002929718303203",target="_blank",
                            tags$i("Ligthart et al.,2016")), 
                     
                      "were input to the lead SNP processing pipeline in order to 
                      create a gene interaction",
                  
                  bs_button(inputId = "pop", label = "subnetwork") %>% 
                    bs_embed_tooltip(title = "A gene analysis technique which combines experimental 
                                     data sets with interaction networks"),
                      "and an",
                    
                     
                     bs_button(inputId = "pop", label = "enrichment") %>% 
                       bs_embed_tooltip(title = "A method to identify classes of genes 
                                        that are over-represented in a dataset"), 

                    "output. A total of 2658 gene-gene interactions were generated 
                      from XGR’s subnetwork maker and 385 significant enrichments 
                      were found across the 11 databases. Noteworthy enrichments 
                      included insulin resistance,", 
             
                     bs_button(inputId = "pop", label = "T1D") %>% 
                       bs_embed_tooltip(title = "Disease characterised by a loss of insulin production"),
                     "and Inflammatory Bowel Disease", 
                     
                     bs_button(inputId = "pop", label = "(IBD).") %>% 
                       bs_embed_tooltip(title = "Group of disorders that involve chronic inflammation of the digestive tract"),
                     align = 'left'),
                   
                   br(),
                   p("The",
                     bs_button(inputId = "pop", label = "Ubiquitin A-52") %>% 
                       bs_embed_tooltip(title = "highly conserved protein responsible for marking cellular proteins for to be degraded"),
                     
                      "gene was also used as an insignificant central",
        
                bs_button(inputId = "pop", label = "linker") %>% 
                  bs_embed_tooltip(title = "Nodes which bridge modules together"),
                    "in the CRP gene subnetwork (Figure 4).", align = 'left')
         ),
                   
         fluidRow(id = 'write_backg', align = ("center"),  
                   
                   bsModal("CRPN", "CRP Subnetwork", "go", size = "large", 
                                    htmlOutput("CRP_N")),
                   bs_button("CRP subnetwork", button_type = "info") %>%
                              bs_attach_modal(id_modal = "CRPN"), 
                   
                  p(tags$i("Figure 4. Subnetwork plot generated by XGR showing the 
                           highest scoring subnetwork of genes found from the CRP lead 
                           SNP list. Hovering over a node will display the gene’s significance 
                           score from XGR. All nodes shown here were included in the enrichment 
                           analysis. Nodes are colour coded according to their highest 
                           scoring enrichment trait from gprofiler2. Highlight each group 
                           of genes by using the dropdown on the left-hand side"),
                    align = "center", style = "font-size: 18px;
                    padding-left: 20px;
                    padding-right: 20px"),
                  
                  
         ),        
                  
         fluidRow(id = 'write_backg', style = "height:auto; padding-left: 20px;",
                  
                  h2(tags$u("Biological validation"), align = "left")
         ),
  
    
      fluidRow(id = 'write_backg', style = "height:auto; padding-left: 20px;
                  padding-right: 20px;
                  font-size:20px;",
       
                  p("Similar to the NC analysis, it was important to confirm 
                    the CRP lead SNPs were giving biologically relevant 
                    outputs. 127 out of the 385 enrichments were related 
                    to the immune response (Figure 5). The wikipathways database yielded the", 

                    bs_button(inputId = "pop", label = "IL-6") %>% 
                      bs_embed_tooltip(title = "Member of the interleukin protein family"),
                    
                    "signalling pathway at an adjusted p-value of 2.0x10-2. 
                    This is encouraging as IL-6 is a well-documented activator 
                    of CRP production in inflammation. Other significant 
                    immune related enrichments include genes involved in",
                    
                     
                    bs_button(inputId = "pop", label = "T-helper") %>% 
                      bs_embed_tooltip(title = "Immune cells which activate B cells and macrophages"),

                  "immune response which reported an adjusted 
                    p-value of 3.5x10-3 (found when querying the GO:BP database). 
                    This indicated that this analysis was outputting biologically 
                    relevant information from the CRP lead SNPs.", align = ('left')),
                  
                br(),
                h2(tags$u("IFD enrichments found in elevated CRP"), align = ("left")),
      
               htmlOutput("CRP_E"),
               p(tags$i("Figure 5. Manhattan style enrichment plot generated by grofiler2 showing 
                significant enrichments found across 11 databases for genes present in the CRP subnetwork.
                        Each enrichment is represented as a dot and colour coded based on which database 
                        it was found in. The negative log of theadjusted p-values are plotted on the y-axis. Individual 
                        p-values for each enrichment can be seen when you hover over a plotted point."),
                 align = "center", style = "font-size: 18px;
                 padding-left: 20px;
                 padding-right: 20px"),
               
                p("Summarised in Table 5,", 

                  bs_button(inputId = "pop", label = "gprofiler2") %>% 
                    bs_embed_tooltip(title = "An R package for gene functional enrichment analysis and visualisation"),
                  
                  "highlighted genes contributing to T1D at an adjusted significance of 
                  3.1x10-2. IBD was also reported at a significance of 
                  1.0x10-2 from the CRP subnetwork nodes. Members of the", 
                  
                  bs_button(inputId = "pop", label = tags$i("HLA")) %>% 
                    bs_embed_tooltip(title = "Group of related genes coding for proteins present in the major histocompatibility complex"),
                  
                  "gene family were once again found to populate the 
                  enriched genes in IBD and T1D."),
   
               
               bsModal(id = "tbl5", title =tags$i("Table 5. Table to show relevant 
                                                  IFD enrichment and the corresponding genes 
                                                  found in the CRP subnetwork"),trigger = "go" ,body = img(src='www/table5.png',
                                                                                 height = 'auto', width = '100%'), size = "large"),
               
               bs_button("Table 5",button_type = 'info') %>%
                 bs_attach_modal(id_modal = "tbl5") 
                  ),


                   
         ),
#HLA-DRB1
           
  tabPanel(title = tags$i("HLA-DRB1"),


      fluidRow(
            h1(tags$i("HLA-DRB1")," Gene Region", align = "center", style = "height: 100; padding: 75px 75px;
                                                          font-size:75px;background-color: rgba(7, 43, 62, 0.9);")
            ),

#writing for DRB1
fluidRow( id = 'write_backg', style = "height:auto; padding-left: 20px;
                                       padding-right: 20px;
                                       font-size:20px;",
          
          h2(tags$u("Summary"), align = "left"),
          
          p("The",
           
            bs_button(inputId = "pop", label = "subnetwork") %>% 
              bs_embed_tooltip(title = "A gene analysis technique which combines experimental 
                                     data sets with interaction networks"),
            
            "and",
            

            bs_button(inputId = "pop", label = "enrichment") %>% 
              bs_embed_tooltip(title = "A method to identify classes of genes 
                                        that are over-represented in a dataset"), 
            
              "analysis of elevated 
              NC and CRP",

            bs_button(inputId = "pop", label = "SNPs") %>% 
              bs_embed_tooltip(title = "A substitution of a single nucleotide at a specific position"),
            
             "demonstrated that both biomarkers 
              correlate with highly significant genetic variants located in the 
              ", tags$i("HLA-DRB1"), "region. Previous investigations have found that 
              particular",
              
               
            bs_button(inputId = "pop", label = "haplotypes") %>% 
              bs_embed_tooltip(title = "Set of genetic determinants"),
             
            "of the three genes ", tags$i("HLA-DRB1,"), tags$i("HLA-DQA1"), "and", tags$i("HLA-DQB1"), "(all located within 100kbp of 
              each other) serve as effective indicators of risk in 
              developing T1D", 
            
             
            
            tags$a(href="https://link.springer.com/article/10.1007/s11892-011-0223-x",target="_blank",
                   tags$i("(Noble et al.,2011).")), 
            
             "Variants associated with IBD have also been mapped to the", tags$i("HLA-DRB1"), "gene 
              region", 
            
              
            tags$a(href="https://www.nature.com/articles/nature05911",target="_blank",
                   tags$i("(Welcome Trust Case Control Consortium 2007)")),       
            
              
            tags$a(href="https://www.nature.com/articles/ng.3359",target="_blank",
                   tags$i("(Liu et al., 2017).")),
            
            align = 'left'),
          br(),
          p("The analysis of the biomarkers indicated 
            that an overactive inflammatory response correlates 
            with significant variants found in the",
          
            bs_button(inputId = "pop", label = "QTL") %>% 
              bs_embed_tooltip(title = "A locus which correlates with variation of a quantitative trait"),
            "(biomarker) studies. As a result, this investigation set out to 
            determine whether the", tags$i("HLA-DRB1"), "region could be 
            acting as a core genetic locus which is playing a role 
            in multiple IFDs.", align = 'left'),
          br(),
          p( bs_button(inputId = "pop", label = "T1D") %>% 
            bs_embed_tooltip(title = "Disease characterised by a loss of insulin production"),

            "and", 
            
          
            bs_button(inputId = "pop", label = "IBD") %>% 
              bs_embed_tooltip(title = "Group of disorders that involve chronic inflammation of the digestive tract"),
            
            bs_button(inputId = "pop", label = "GWAS") %>% 
              bs_embed_tooltip(title = "An observational study comparing genetic variants present in a population
                               of individuals with a binary trait"),
            
            "results were input to the lead SNP 
            processing pipeline to extract the most significant 
            variants. These (along with the variants identified 
            from the biomarker analysis) were then mapped across 
            the", tags$i("HLA-DRB1"), "region (shown in Table 6 and Figure 6).", align = 'left'),
          br(),
       
          
          bsModal(id = "tbl6", title = tags$i("Table 6. Table to summarise the 
                                              six variants which were mapped across the 
                                              HLA-DRB1 region, their loci, the wild type 
                                              and risk allele (on the forward strand), 
                                              the trait which the variant was associated 
                                              with and the QTL or GWAS study which identified it."),trigger = "go" ,body = img(src='www/table6.png',
                                             height = 'auto', width = '100%'), size = "large"),
                 
         bs_button("Table 6", button_type = 'info') %>%
           bs_attach_modal(id_modal = "tbl6"),
         
         br(),br(),
         column(6, htmlOutput("mech")),
         column(4, offset = 2, img(src="www/key2.png", width = "400px", height = "500px"), align = "center")
),
fluidRow( id = 'write_backg', style = "height:auto; padding-left: 20px;
                                       padding-right: 20px;
                                       font-size:20px;",
         
         p(tags$i("Figure 6. The variants highlighted by this study mapped 
                   across the HLA-DRB1 gene region. The exons of HLA-DRB1 are shown 
                    in blue, the exons of HLA-DQA1 are shown in orange and the exons 
                    of HLA-DQB1 are shown in purple. The loci of each variant are 
                     shown in red and overlapping predicted transcription factor 
                     binding sites from JASPAR are shown in green writing. The promoters 
                    and enhancers from GeneHancer are shown below the genes
                     (grey rectangles represent enhancers and red rectangles 
                     represent promoters)."),
           align = "center", style = "font-size: 18px;
                 padding-left: 20px;
                 padding-right: 20px"),
         
           
         br(),br(),
         
         p("The variants have been loaded onto the UCSC genome browser. 

         Click",          
           
           tags$a(href="https://genome-euro.ucsc.edu/s/flixof/HLA%2DDRB1%2DFOF",target="_blank",
                        tags$i("here")),
           "to load the session.", align = "left"),
         
#br(),
#          p("This analysis suggests that elevated NC and CRP are indicators of T1D 
#            risk and may correlate to two different SNPs present in the ", tags$i("HLA-DRB1"),"
#            gene region. Furthermore, NC and CRP could act as possible biomarkers for 
#            high risk", tags$i("HLA-DRB1/DQA1/DQB1"), "haplotypes. Screening for a patient’s haplotype is 
#            an expensive and time-consuming process, elevated levels of these biomarkers 
#            could serve as a cheaper and faster method to screen patients.", align = 'left'), 
          br(),
          h2(tags$u("Colocalisation analysis against enhancers"), align = "left"),
          p("To grasp a high-level understanding of the regulatory 
            interactions taking place at this loci,",
            
            
            bs_button(inputId = "pop", label = "GeneHancer") %>% 
              bs_embed_tooltip(title = "Database of human regulatory elements"),
            "enhancer regions were",
            
            bs_button(inputId = "pop", label = "colocalised ") %>% 
              bs_embed_tooltip(title = "Statistical tests to determine if a given SNP is localised to a region
                               of interest by chance"),
            "with the variants.", 

            bs_button(inputId = "pop", label = "GAT") %>% 
              bs_embed_tooltip(title = "Tool for computing the significance of overlap between multiple sets of genomic intervals"),
            
            "found significant overlaps between the variants rs9271588 
            rs9272346 rs113653754 rs9273368 and rs9469220 and the GeneHancer", 
      

            "enhancer regions (Table 7). Every promoter 
            in the", tags$i("HLA-DRB1"), "gene region interacts with more than two 
            enhancers. This could suggest that differential expression 
            of each gene is dependent on the others. However, a 
            precise model for the regulatory effect which these 
            variants are having across the loci cannot be confidently 
            determined without tissue specific sequence information.", align = 'left'), 
       
         bsModal(id = "tbl7", title = tags$i("Table 7. Table to summarise the overlapping 
                                             enhancer or promoter (from the GeneHancer 
                                             database) to each variant. "),trigger = "go" ,body = img(src='www/table7.png',
                                                height = 'auto', width = '100%'), size = "large"),
        
         bs_button("Table 7",button_type = 'info') %>%
           bs_attach_modal(id_modal = "tbl7"),  
         
         
           
         
          br(),
          h2(tags$u("Colocalisation analysis against predicted transcription factor binding sites"), align = "left"),
          p("To gain further insight into the gene regulation at this 
            locus,",

            bs_button(inputId = "pop", label = "JASPAR") %>% 
              bs_embed_tooltip(title = "Database of curated and non-redundant 
                               transcription factor binding profiles"),
            
            "was used to predict likely", 
             
            
            bs_button(inputId = "pop", label = "transcription factors") %>% 
              bs_embed_tooltip(title = "Proteins involved in the process of transcribing DNA into RNA"),
            
          "which could be interacting with the regulatory 
            regions. This is summarised in Figure 6 and Table 8. GAT 
            highlighted three significant overlaps between the JASPAR 
            predicted transcription factor binding sites and the IFD 
            related SNPs. The variants rs9272346 
            and rs9273368 showed overlap with the transcription factors 
            Kruppel Like Factor 1 (KLF1) and Retinoic Acid Receptor 
            Gamma (RARG(var2.)) repspectively. KLF1 is a known 
            positive regulator of",
           
          
          bs_button(inputId = "pop", label = "erythropoiesis") %>% 
            bs_embed_tooltip(title = "Mechanism to produce red blood cells"),
           
          "and acts to induce high levels of erythroid gene expression",

            tags$a(href="https://journals.lww.com/co-hematology/Fulltext/2013/05000/Three_fingers_on_the_switch___Kr_ppel_like_factor.3.aspx?casa_token=utN5omNIqWIAAAAA:s2paksiQddtHUEk-FY7yxjFhYbIV7IgXOV4_-wjQpNEPn6w0vSQaHaNPOnN5rnTwIne6Zyfe1N-VllHU4ft_LZo3R3A",target="_blank",
                   tags$i("(Tallack et al.,2013).")),
            
            "RARG(var2) is a ligand dependent regulator known to play 
            a key role in limb development",
           
             tags$a(href="https://www.sciencedirect.com/science/article/pii/S0012160609014407",target="_blank",
                   tags$i("(Pennimpede et al., 2010).")),
          
          
           align = 'left'), 
          
          p("The rs9271588 variant showed a significant overlap with 
            a predicted CCCTC-binding factor (CTCF) binding region. 
            CTCF acts as an",
             
            bs_button(inputId = "pop", label = "insulator") %>% 
              bs_embed_tooltip(title = "DNA binding proteins which shield genes from regulatory signals"),
            "between regulatory regions. 
            Shown in Figure 6, the rs9271588 variant is located in 
            an enhancer region between the promoters of", tags$i("HLA-DRB1"), "and 
            ", tags$i("HLA-DQA1."), "This analysis could suggest that CTCF is 
            insulating the regulatory interactions which occur across 
            the rs9271588 variant.", align = 'left'), 
         
         bsModal(id = "tbl8", title = tags$i("Table 8. Table to summarise the overlapping 
                                             predicted transcription factor binding site 
                                             (from JASPAR) to each variant. "),trigger = "go" ,body = img(src='www/table8.png',
                                                                           height = 'auto', width = '100%'), size = "large"),
         
         bs_button("Table 8",button_type = 'info') %>%
           bs_attach_modal(id_modal = "tbl8"), 
         
         
         
          h2(tags$u("Suggested mechanism for", tags$i("HLA-DRB1"), "de-regulation"), align = "left"),
          
          p("Figure 6 summarises this analysis’s suggested mechanisms 
            of gene regulation in IFDs. The rs9271588 rs9272346 
            rs113653754 rs9273368 and rs9469220 variants could be 
            causing disruptions between enhancers and the promoters 
            of the", tags$i("HLA-DRB1,"),tags$i("HLA-DQA1"), "and ",tags$i("HLA-DQB1"), "genes. Previous 
            investigations have shown all these genes to have increased 
            expression in IFD patients",
            
             
            
            tags$a(href="https://www.sciencedirect.com/science/article/pii/S0165572805001955?casa_token=-kACMWX2pssAAAAA:cvnIA3Znxq0EOkzGLD5C8_c0AYcJgsG0Px4Zu_X3CCXpyL4DS0USkIPwKnYndSB46pK1TH6efA",target="_blank",
                   tags$i("(Prat et al., 2005)")),  
            
            
            tags$a(href="https://onlinelibrary.wiley.com/doi/abs/10.1002/eji.1830270634",target="_blank",
                   tags$i("(Maffei et al.,2003).")),
            "Therefore, it is likely that these variants are acting to increase the positive regulatory 
            effects of enhancer-promoter binding. Furthermore, CTCF 
            could be acting to insulate negative regulatory 
            interactions, resulting in increased gene expression.", align = 'left')           

  )
),

#DISCUSSION
  tabPanel(title = "Discussion",
#Discussion header
        fluidRow(
            h1("Discussion", align = "center", style = "height: 100; padding: 75px 75px;
                                                          font-size:75px;background-color: rgba(7, 43, 62, 0.9);")
            ),
#Writing for discussion

     fluidRow( id = 'write_backg', style = "height:auto; padding-left: 20px;
                                            padding-right: 20px;
                                            font-size:20px;",
        h2(tags$u("Principle findings of investigation"), align = "left"),
        p("Elevated NC and CRP indicates an overactive inflammatory response. This investigation 
          found that both biomarkers showed evidence to be suitable indicators 
          for high-risk variants in",

          bs_button(inputId = "pop", label = "T1D.") %>% 
            bs_embed_tooltip(title = "Disease characterised by a loss of insulin production"),
          
          "Furthermore, this investigation highlights 
          NC and CRP correlated variants located in regulatory regions spanning the 
          ", tags$i("HLA-DRB1,"), tags$i("HLA-DQA1,"), " and ",tags$i("HLA-DQB1"), " genes. These genes code for proteins 
          present in the",
           
          
           bs_button(inputId = "pop", label = "MHC") %>% 
           bs_embed_tooltip(title = "Tissue-antigen that allows for autorecognition"),
          
          
          "and have a key function in the inflammatory response. 
          It is possible these variants are acting as core haplotypes which 
          contribute to the de-regulation of gene expression of", tags$i("HLA-DRB1,"), tags$i("HLA-DQA1"), 
          "and", tags$i("HLA-DQB1")," and consequently, an increased inflammatory response.", align = 'left'),           
        br(),
        h2(tags$u("Limitations of investigation"), align = "left"),

        p("A strong positive association has been observed 
            between increased",

          bs_button(inputId = "pop", label = "BMI") %>% 
            bs_embed_tooltip(title = "Weight in kilograms divided by height in meters squared"),
            "and elevated levels of CRP", 
            
          
          tags$a(href="https://www.nature.com/articles/ijo2010137",target="_blank",
                 tags$i("(Timpson et al.,2011).")),   
            "It is possible that the increase 
            in BMI is acting as a",
           
          bs_button(inputId = "pop", label = "confounder") %>% 
            bs_embed_tooltip(title = "A variable that influences the both dependent and independent variables"),
        
          
          "between the increased 
            levels of CRP and this analysis’s finding of the association 
            with SNPs presents in the DRB1/DQA1 gene region. This 
            could not have been controlled for since this analysis 
            used multiple datasets from different studies, some of 
            which did not correct for BMI. However, the limitation 
            could be addressed by performing a",
    
          bs_button(inputId = "pop", label = "QTL") %>% 
            bs_embed_tooltip(title = "A locus which correlates with variation of a quantitative trait"),
          "study on NC and CRP levels in IFD patients and adjust directly for BMI.", align = 'left'),  
        br(),
        p("Furthermore, the reference data for enhancers and 
          transcription factor binding sites used in the 
          colocalisation analysis was not directly taken from 
          tissue specific capture",
  
          bs_button(inputId = "pop", label = "Hi-C") %>% 
            bs_embed_tooltip(title = "Chromosome conformation capture technique"),
          "and",
          
          bs_button(inputId = "pop", label = "ChIP-seq") %>% 
            bs_embed_tooltip(title = "Method to analyse protein interactions with DNA"),
          
          "studies. This could be addressed by performing Hi-C and ChIP-seq 
          experiments on a range of IFD patient’s samples (in the 
          appropriate cell type) alongside",
          
          bs_button(inputId = "pop", label = "RNA-seq") %>% 
            bs_embed_tooltip(title = "technique to reveal the quantity of RNA in sample"),
          
          "to confirm the differential expression of these genes.", align = 'left'), 
      br(),
      h2(tags$u("The wider field"), align = "left"),

      p("The omnigenic model, put forward by Boyle in 2015,   
            claims that gene regulatory networks have such high",
        
        
        bs_button(inputId = "pop", label = "connectivity") %>% 
          bs_embed_tooltip(title = "Measure of how interlinked a network is"),
        
        "that we can assume any gene can have a 
        regulatory effect on a core disease related gene",
        
        
        tags$a(href="https://www.sciencedirect.com/science/article/pii/S0092867417306293",target="_blank",
               tags$i("(Boyle et al.,2015).")),    
        
        "This investigation has indicated 
        that the", tags$i("HLA-DRB1"), "gene region significantly correlates 
        with a general increase in inflammation (across multiple 
        inflammatory biomarkers and multiple IFDs). It 
        could be speculated, therefore, that", tags$i("HLA-DRB1,"), tags$i("HLA-DQA1"), 
       "and", tags$i("HLA-DQB1"), "could be core disease related genes, which 
        would align with the current consensus that the", tags$i("HLA-DRB1"),   
       "gene region plays a pivotal role in T1D. This investigation 
        expands on this and suggests", tags$i("HLA-DRB1"), tags$i("HLA-DQA1"),"and", 
       tags$i("HLA-DQB1"), "could be core disease related genes for multiple 
        IFDs (such as IBD).", align = 'left'),       
      br(),  
        h2(tags$u("Future research"), align = "left"),

      p("Future investigations should aim to provide a full 
          epigenetic model for the de-regulation of the", tags$i("HLA-DRB1"), 
        "region in IFDs. Tissue specific Hi-C and ChIP-seq experiments 
        should be performed to confirm the regulatory mechanisms proposed 
        in this analysis. Furthermore, conducting these",
        
        bs_button(inputId = "pop", label = "epigenetic") %>% 
          bs_embed_tooltip(title = "Study of the causes of altered gene expression"),
        
        
        "experiments in individuals with different IFDs would be required 
        to corroborate this study’s suggestion that haplotypes across 
        the", tags$i("HLA-DRB1"), "gene region play a wider role in IFDs.", align = 'left')              

  )
),

navbarMenu(title = "Extra", 
tabPanel("References",id = "navbar_font",

    fluidRow(
            h1("References", align = "center", style = "height: 100; padding: 75px 75px;
                                                          font-size:75px;background-color: rgba(7, 43, 62, 0.9);")
            ),


    fluidRow( id = 'write_backg', style = "height:auto; padding: 20px 20px;",

            p("-	Pepys, M.B. and Hirschfield, G.M., 2003. C-reactive protein: a critical update. The Journal of clinical investigation, 111(12), pp.1805-1812.", align = 'left'),
            p("-	Amulic, B., Cazalet, C., Hayes, G.L., Metzler, K.D. and Zychlinsky, A., 2012. Neutrophil function: from mechanisms to disease. Annual review of immunology, 30, pp.459-489."
                , align = 'left'),
            p("-	Kolaczkowska, E. and Kubes, P., 2013. Neutrophil recruitment and function in health and inflammation. Nature reviews immunology, 13(3), pp.159-175."
              , align = 'left'),
            p("-	Gkrania-Klotsas, E., Ye, Z., Cooper, A.J., Sharp, S.J., Luben, R., Biggs, M.L., Chen, L.K., Gokulakrishnan, K., Hanefeld, M., Ingelsson, E. and Lai, W.A., 2010. Differential white blood cell count and type 2 diabetes: systematic review and meta-analysis of cross-sectional and prospective studies. PloS one, 5(10), p.e13405."
              , align = 'left'),
            p("-	Wheeler, J.G., Mussolino, M.E., Gillum, R.F. and Danesh, J., 2004. Associations between differential leucocyte count and incident coronary heart disease: 1764 incident cases from seven prospective studies of 30 374 individuals. European heart journal, 25(15), pp.1287-1292."
              , align = 'left'),
            p("-	Harsunen, M.H., Puff, R., D’Orlando, O., Giannopoulou, E., Lachmann, L., Beyerlein, A., von Meyer, A. and Ziegler, A.G., 2013. Reduced blood leukocyte and neutrophil numbers in the pathogenesis of type 1 diabetes. Hormone and metabolic research, 45(06), pp.467-470."
              , align = 'left'),
            p("-	Valle, A., Giamporcaro, G.M., Scavini, M., Stabilini, A., Grogan, P., Bianconi, E., Sebastiani, G., Masini, M., Maugeri, N., Porretti, L. and Bonfanti, R., 2013. Reduction of circulating neutrophils precedes and accompanies type 1 diabetes. Diabetes, 62(6), pp.2072-2077."
              , align = 'left'),
            p("-	Celli, B.R., Locantore, N., Yates, J., Tal-Singer, R., Miller, B.E., Bakke, P., Calverley, P., Coxson, H., Crim, C., Edwards, L.D. and Lomas, D.A., 2012. Inflammatory biomarkers improve clinical prediction of mortality in chronic obstructive pulmonary disease. American journal of respiratory and critical care medicine, 185(10), pp.1065-1072."
              , align = 'left'),
            p("-	Zhang, X.Y., Simpson, J.L., Powell, H., Yang, I.A., Upham, J.W., Reynolds, P.N., Hodge, S., James, A.L., Jenkins, C., Peters, M.J. and Lin, J.T., 2014. Full blood count parameters for the detection of asthma inflammatory phenotypes. Clinical & experimental allergy, 44(9), pp.1137-1145."
              , align = 'left'),
            p("-	Mortensen, R.F., 2001. C-reactive protein, inflammation, and innate immunity. Immunologic research, 24(2), pp.163-176."
              , align = 'left'),
            p("-	Schalkwijk, C.G., Poland, D.C.W., Van Dijk, W., Kok, A., Emeis, J.J., Dräger, A.M., Doni, A., Van Hinsbergh, V.W.M. and Stehouwer, C.D.A., 1999. Plasma concentration of C-reactive protein is increased in type I diabetic patients without clinical macroangiopathy and correlates with markers of endothelial dysfunction: evidence for chronic inflammation. Diabetologia, 42(3), pp.351-357."
              , align = 'left'),
            p("-	Vermeire, S., Van Assche, G. and Rutgeerts, P., 2004. C-reactive protein as a marker for inflammatory bowel disease. Inflammatory bowel diseases, 10(5), pp.661-665."
              , align = 'left'),
            p("-	Kasayama, S., Tanemura, M., Koga, M., Fujita, K., Yamamoto, H. and Miyatake, A., 2009. Asthma is an independent risk for elevation of plasma C-reactive protein levels. Clinica Chimica Acta, 399(1-2), pp.79-82."
              , align = 'left'),
            p("-	Wood, L.G., Baines, K.J., Fu, J., Scott, H.A. and Gibson, P.G., 2012. The neutrophilic inflammatory phenotype is associated with systemic inflammation in asthma. Chest, 142(1), pp.86-93."
              , align = 'left'),
            p("-	Del Giudice, M. and Gangestad, S.W., 2018. Rethinking IL-6 and CRP: Why they are more than inflammatory biomarkers, and why it matters. Brain, behavior, and immunity, 70, pp.61-75."
              , align = 'left'),
            p("-	Buxton, D.S., Batten, D.J., Crofts, J.J. and Chuzhanova, N., 2019. Predicting novel genomic regions linked to genetic disorders using GWAS and chromosome conformation data–a case study of schizophrenia. Scientific Reports, 9(1), pp.1-14."
              , align = 'left'),
            p("-	Han, X., Ong, J.S., An, J., Hewitt, A.W., Gharahkhani, P. and MacGregor, S., 2020. Using Mendelian randomization to evaluate the causal relationship between serum C-reactive protein levels and age-related macular degeneration. European Journal of Epidemiology, pp.1-8."
              , align = 'left'),
            p("-	Ligthart, S., Vaez, A., Võsa, U., Stathopoulou, M.G., De Vries, P.S., Prins, B.P., Van der Most, P.J., Tanaka, T., Naderi, E., Rose, L.M. and Wu, Y., 2018. Genome analyses of> 200,000 individuals identify 58 loci for chronic inflammation and highlight pathways that link inflammation and complex disorders. The American Journal of Human Genetics, 103(5), pp.691-706."
              , align = 'left'),
            p("-	Astle, W.J., Elding, H., Jiang, T., Allen, D., Ruklisa, D., Mann, A.L., Mead, D., Bouman, H., Riveros-Mckay, F., Kostadima, M.A. and Lambourne, J.J., 2016. The allelic landscape of human blood cell trait variation and links to common complex disease. Cell, 167(5), pp.1415-1429."
              , align = 'left'),
            p("-	Barrett, J.C., Clayton, D.G., Concannon, P., Akolkar, B., Cooper, J.D., Erlich, H.A., Julier, C., Morahan, G., Nerup, J., Nierras, C. and Plagnol, V., 2009. Genome-wide association study and meta-analysis find that over 40 loci affect risk of type 1 diabetes. Nature genetics, 41(6), p.703."
              , align = 'left'),
            p("-	Onengut-Gumuscu, S., Chen, W.M., Burren, O., Cooper, N.J., Quinlan, A.R., Mychaleckyj, J.C., Farber, E., Bonnie, J.K., Szpak, M., Schofield, E. and Achuthan, P., 2015. Fine mapping of type 1 diabetes susceptibility loci and evidence for colocalization of causal variants with lymphoid gene enhancers. Nature genetics, 47(4), p.381."
              , align = 'left'),
            p("-	Plagnol, V., Howson, J.M., Smyth, D.J., Walker, N., Hafler, J.P., Wallace, C., Stevens, H., Jackson, L., Simmonds, M.J., Bingley, P.J. and Gough, S.C., 2011. Genome-wide association analysis of autoantibody positivity in type 1 diabetes cases. PLoS genetics, 7(8)."
              , align = 'left'),
            p("-	Stuart, P.E., Nair, R.P., Tsoi, L.C., Tejasvi, T., Das, S., Kang, H.M., Ellinghaus, E., Chandran, V., Callis-Duffin, K., Ike, R. and Li, Y., 2015. Genome-wide association analysis of psoriatic arthritis and cutaneous psoriasis reveals differences in their genetic architecture. The American Journal of Human Genetics, 97(6), pp.816-836."
              , align = 'left'),
            p("-	Cousminer, D.L., Ahlqvist, E., Mishra, R., Andersen, M.K., Chesi, A., Hawa, M.I., Davis, A., Hodge, K.M., Bradfield, J.P., Zhou, K. and Guy, V.C., 2018. First genome-wide association study of latent autoimmune diabetes in adults reveals novel insights linking immune and metabolic diabetes. Diabetes Care, 41(11), pp.2396-2403."
              , align = 'left'),
            p("-	Cooper, J.D., Smyth, D.J., Smiles, A.M., Plagnol, V., Walker, N.M., Allen, J.E., Downes, K., Barrett, J.C., Healy, B.C., Mychaleckyj, J.C. and Warram, J.H., 2008. Meta-analysis of genome-wide association study data identifies additional type 1 diabetes risk loci. Nature genetics, 40(12), p.1399."
              , align = 'left'),
            p("-	Wellcome Trust Case Control Consortium, 2007. Genome-wide association study of 14,000 cases of seven common diseases and 3,000 shared controls. Nature, 447(7145), p.661."
              , align = 'left'),
            p("-	Liu, J.Z., Van Sommeren, S., Huang, H., Ng, S.C., Alberts, R., Takahashi, A., Ripke, S., Lee, J.C., Jostins, L., Shah, T. and Abedian, S., 2015. Association analyses identify 38 susceptibility loci for inflammatory bowel disease and highlight shared genetic risk across populations. Nature genetics, 47(9), p.979."
              , align = 'left'),
            p("-	Fang, H., Knezevic, B., Burnham, K.L. and Knight, J.C., 2016. XGR software for enhanced interpretation of genomic summary data, illustrated by application to immunological traits. Genome medicine, 8(1), p.129."
              , align = 'left'),
            p("-	Reimand, J., Kolde, R., Arak, M.T. and RCurl, I., 2019. Package ‘gProfileR’."
              , align = 'left'),
            p("-	Heger, A., Webber, C., Goodson, M., Ponting, C.P. and Lunter, G., 2013. GAT: a simulation framework for testing the association of genomic intervals. Bioinformatics, 29(16), pp.2046-2048."
              , align = 'left'),
            p("-	Fishilevich, S., Nudel, R., Rappaport, N., Hadar, R., Plaschkes, I., Iny Stein, T., Rosen, N., Kohn, A., Twik, M., Safran, M. and Lancet, D., 2017. GeneHancer: genome-wide integration of enhancers and target genes in GeneCards. Database, 2017."
              , align = 'left'),
            p("-	Fornes, O., Castro-Mondragon, J.A., Khan, A., van der Lee, R., Zhang, X., Richmond, P.A., Modi, B.P., Correard, S., Gheorghe, M., Baranašić, D. and Santana-Garcia, W., 2020. JASPAR 2020: update of the open-access database of transcription factor binding profiles. Nucleic acids research, 48(D1), pp.D87-D92."
              , align = 'left'),
            p("-	Noble, J.A. and Valdes, A.M., 2011. Genetics of the HLA region in the prediction of type 1 diabetes. Current diabetes reports, 11(6), p.533."
              , align = 'left'),
            p("-	Tallack, Michael R., and Andrew C. Perkins. 'Three fingers on the switch: Krüppel-like factor 1 regulation of γ-globin to β-globin gene switching.' Current opinion in hematology 20, no. 3 (2013): 193-200."
              , align = 'left'),
            p("-	Pennimpede, T., Cameron, D.A., MacLean, G.A. and Petkovich, M., 2010. Analysis of Cyp26b1/Rarg compound-null mice reveals two genetically separable effects of retinoic acid on limb outgrowth. Developmental biology, 339(1), pp.179-186."
              , align = 'left'),
            p("-	Prat, E., Tomaru, U., Sabater, L., Park, D.M., Granger, R., Kruse, N., Ohayon, J.M., Bettinotti, M.P. and Martin, R., 2005. HLA-DRB5* 0101 and-DRB1* 1501 expression in the multiple sclerosis-associated HLA-DR15 haplotype. Journal of neuroimmunology, 167(1-2), pp.108-119."
              , align = 'left'),
            p("-	Maffei, A., Harris, P.E., Reed, E.F., Pozzo, G.D., Ciullo, M., Suciu‐Foca, N. and Guardiola, J., 1997. Differential expression of insulin‐dependent diabetes mellitus‐associated HLA‐DQA1 alleles in vivo. European journal of immunology, 27(6), pp.1549-1556."
              , align = 'left'),
            p("-	Timpson, N.J., Nordestgaard, B.G., Harbord, R.M., Zacho, J., Frayling, T.M., Tybjærg-Hansen, A. and Smith, G.D., 2011. C-reactive protein levels and body mass index: elucidating direction of causation through reciprocal Mendelian randomization. International journal of obesity, 35(2), pp.300-308."
              , align = 'left'),
            p("-	Boyle, E.A., Li, Y.I. and Pritchard, J.K., 2017. An expanded view of complex traits: from polygenic to omnigenic. Cell, 169(7), pp.1177-1186."
              , align = 'left'),

  
   ),
),

           
  tabPanel("Acknowledgements",id = "navbar_font",

        
           fluidRow(
             h1("Acknowledgements", align = "center", style = "height: 100; padding: 75px 75px;
                font-size:75px;background-color: rgba(7, 43, 62, 0.9);")),     
           
           
          
           
           fluidRow( id = 'write_backg', style = "height:auto; padding-left: 20px;
                                             padding-right: 20px;
                                              font-size:20px;",
             aos(
               element = fluidRow(p("Thank you to Antonio for the sustained guidance and support throughout this project."), 
                                     align = "left", style = "height: 100; padding: 50px 50px;
                                     font-size:20px;"), 
               animation = "zoom-in", 
               duration = "2500"),
           ),    
           
           fluidRow( id = 'write_backg', style = "height:auto; padding-left: 20px;
                                             padding-right: 20px;
                     font-size:20px;",
             aos(
               element = fluidRow(p("Photo credit for background image: qimono (pixabay artist)"), 
                                     align = "left", style = "height: 100; padding: 50px 50px;
                                     font-size:20px;"), 
               animation = "zoom-in", 
               duration = "2500"),
               ),    
        
        ),
    

  tabPanel("Pipeline Architecture", id = "navbar_font",
      fluidRow(  
          h1("Pipeline Architecture", align = "center", 
                                      style = "height: 100; padding: 75px 75px;
                                      font-size:75px;background-color: rgba(7, 43, 62, 0.9);")
   ),
  
       fluidRow( id = 'write_backg', style = "height:auto; padding-left: 20px;
                                             padding-right: 20px;
                                              font-size:20px;",

            p("The lead SNP processing pipeline was built using",

                  
            tags$a(href="https://www.nextflow.io/",target="_blank",
               tags$i("nextflow.")),

                  "The diagram below summarises each step in the pipeline. 
                  The scripts can be found",
       
            
            tags$a(href="https://github.com/flixofarrell/XGR_PIPELINE",target="_blank",
                   tags$i("here.")),
         
            column(12, img(src='www/pipearchi.png', width = "100%",  height = "100%",align = "center")),
   
            
            
          )
        ) 
      )
    ),
tags$script(
  "$('.navbar').click(function(){
  $('body, html').animate({scrollTop: 0}, 0);
  });
  
") 

 )

)








