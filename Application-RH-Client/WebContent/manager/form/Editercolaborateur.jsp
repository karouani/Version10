<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="row-fluid">
	<div class="span12">
		<div class="box gradient">

			<div class="title">

				<h4>
					<span>Formulaire Nouveau <s:property value="type" /></span>
				</h4>

			</div>
			<div class="content noPad clearfix">

				<form action="#" method="POST" class="form-horizontal"
					id="wizzard-form">
					<!-- Smart Wizard -->
					<div id="wizard-validation" class="swMain">
						<ul>

							<li><a href="#step-1"> <label class="stepNumber">1</label>
									<span class="stepDesc"> Les données Personelles </span>
							</a></li>
							<li><a href="#step-2"> <label class="stepNumber">2</label>
									<span class="stepDesc"> Les dates </span>
							</a></li>
							<li><a href="#step-3"> <label class="stepNumber">3</label>
									<span class="stepDesc"> Autres détailles </span>
							</a></li>
						</ul>

						<div id="step-1">
							<div class="span12">
								<div class="form-row row-fluid">
									<div class="span12">
										<div class="row-fluid">
											<label class="form-label span3" for="fname">Matricule
												:</label> <input class="span9" id="matricule" name="matricule"
												type="text" value="<s:property value='model.getMatricule()'/>" maxlength="5" />
										</div>
									</div>
								</div>

								<div class="form-row row-fluid">
									<div class="span12">
										<div class="row-fluid">
											<label class="form-label span3" for="fname">Nom :</label> <input
												class="span9" id="nom" name="nom" type="text" 
												value="<s:property value='model.getNom()'/>"
												 />
										</div>
									</div>
								</div>
								<div class="form-row row-fluid">
									<div class="span12">
										<div class="row-fluid">
											<label class="form-label span3" for="lname">Prénom :</label>
											<input class="span9" id="prenom" name="prenom" type="text" 
											value="<s:property value='model.getPrenom()'/>"
											/>
										</div>
									</div>
								</div>
								<div class="form-row row-fluid">
									<div class="span12">
										<div class="row-fluid">
											<label class="form-label span3" for="abreviation">Abreviation
												:</label> <input class="span9" id="abreviation" name="abreviation"
												type="text" 
												value="<s:property value='model.getAbreviation()'/>"
												/>
										</div>
									</div>
								</div>

								<div class="form-row row-fluid">
									<div class="span12">
										<div class="row-fluid">
											<label class="form-label span3" for="gender">Sexe :</label>
											<div class="span9 controls">
												<select id="gender" name="gender">
													<option value="" selected>- select -</option>
													<option value="homme">Homme</option>
													<option value="femme">Femme</option>
												</select>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="step-2">
							<div class="span12">

								<div class="form-row row-fluid">
									<div class="span12">
										<div class="row-fluid">
											<label class="form-label span3" for="site">Site :</label> <select
												id="site" name="site">
												<option value="">Rabat</option>
												<option value="bac+2">Casablanca</option>
												<option value="bac+3">Fes</option>
												<option value="bac+5">Kech</option>
												<option value="autres">Autres</option>
											</select>
										</div>
									</div>
								</div>

								<div class="form-row row-fluid">
									<div class="span12">
										<div class="row-fluid">
											<label class="form-label span3" for="bu">BU :</label> <select
												id="bu" name="bu">
												<option value="">- select -</option>
												<option value="bac+2">MRR1</option>
												<option value="bac+3">MRR1</option>
												<option value="bac+5">MRR1</option>
												<option value="autres">Autres</option>
											</select>
										</div>
									</div>
								</div>

								<div class="form-row row-fluid">
									<div class="span12">
										<div class="row-fluid" id="diplome">
											<label class="form-label span3" for="diplome" >Diplôme
												:</label> <input class="span9" type="text" name="ecole" />
											<div class="span7 controls"
												style="display: -webkit-box; display: -moz-box; display: -webkit-flexbox; display: -ms-flexbox; display: -webkit-flex; display: flex; width: 74%; margin-top: 8px;">

												<select id="niveau" name="niveau">
													<option value="">- select -</option>
													<option value="bac+2">Bac+2</option>
													<option value="bac+3">Bac+3</option>
													<option value="bac+5">Bac+5</option>
													<option value="autres">Autres</option>
												</select> <select id="type-ecole" name="type-ecole">
													<option value="">- select -</option>
													<option value="Nationale" class="bac+2 bac+3 bac+5 autres">nationale</option>
													<option value="Internationale"
														class="bac+2 bac+3 bac+5 autres">internationale</option>
												</select> <select id="type-diplome" name="type-diplome">
													<option value="">- select -</option>
													<option value="prive" class="Nationale Internationale">Privé</option>
													<option value="etatique" class="Nationale Internationale">Etatique</option>
												</select> <input type="text" name="promotion" maxlength="9"
													placeholder="xxxx-xxxx" id="promotion" class="span4 text" />
												<i class="icon-plus-sign" id="ajouterDiplome"></i>
												<i class="icon-minus-sign" id="supprimerDiplome"></i>
											</div>
										</div>
										<div id="diplome1"></div>
									</div>
								</div>

								<div class="form-row row-fluid">
									<div class="span12">
										<div class="row-fluid">
											<label class="form-label span3" for="dateembauche">Date
												Embauche</label> <input type="text" class="span9" id="datepicker"
												name="dateembauche" />
										</div>
									</div>
								</div>

								<div class="form-row row-fluid">
									<div class="span12">
										<div class="row-fluid">
											<label class="form-label span3" for="moisBAP">mois
												BAP :</label> <input class="span9" id="moisBAP" name="moisBAP"
												type="text" />
										</div>
									</div>
								</div>
								<s:if test="%{quitter != null}">
									<div class="form-row row-fluid">
										<div class="span12">
											<div class="row-fluid">
												<label class="form-label span3" for="abreviation">date
													d&eacute;part :</label> <input class="span9" id="datedepart"
													name="datedepart" type="text" />
											</div>
										</div>
									</div>
								</s:if>
							</div>
						</div>
						<div id="step-3">
							<input type="hidden" id="testeur" value="no">
							<div class="span12">


								<div class="form-row row-fluid">
									<div class="span12">
										<div class="row-fluid">
											<label class="form-label span3" for="checkboxes">Participé
												au séminaire d'intégration :</label>
											<div class="span9 controls">
												<div class="left marginR10">
													<input type="checkbox" id="inlineCheckbox4"
														name="participeseminaire" class="ibutton" />
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="form-row row-fluid afficher" id="dateparticipe">
									<div class="span12">
										<div class="row-fluid">
											<label class="form-label span3" for="dateparticipeseminaire">Date
												participation</label> <input type="text" class="span9"
												id="dateparticipeseminaire" name="dateparticipeseminaire" />
										</div>
									</div>
								</div>

								<div class="form-row row-fluid">
									<div class="span12">
										<div class="row-fluid">
											<label class="form-label span3" for="posttravail">Poste
												Actuel :</label> <input maxlength="4" class="span9" id="posttravail"
												name="posttravail" type="text" />
										</div>
									</div>
								</div>

								<div class="form-row row-fluid">
									<div class="span12">
										<div class="row-fluid">
											<label class="form-label span3" for="salaireactuel">Salaire
												Actuel :</label> <input class="span9" id="salaireactuel"
												name="salaireactuel" type="text" disabled="disabled" />
										</div>
									</div>
								</div>


								<div class="form-row row-fluid">
									<div class="span12">
										<div class="row-fluid"  id="technologie">
											<label class="form-label span3" for="desctechno">Technologies
												: </label>
											<div class="span7 controls" id="techno"
												style="display: -webkit-box; display: -moz-box; display: -webkit-flexbox; display: -ms-flexbox; display: -webkit-flex; display: flex; width: 74%; margin-top: 8px;">
												<input class="span6 text" type="text" name="desctechno"
													placeholder="Technologie" /> <input class="span6 text"
													type="text" name="comp" placeholder="Comp&eacute;tences" />
												<select id="niveau" name="level" style="width: 0;">
													<option value="">- Niveau -</option>
													<%
														for (int i = 1; i < 6; i++) {
													%>
													<option value="<%=i%>">Niveau
														<%=i%></option>
													<%
														}
													%>
												</select> 
												<i class="icon-plus-sign" id="Ajoutertechnologie"></i>
											<i class="icon-minus-sign" id="supprimertechnologie"></i>
											</div>
										</div>
										<div id="technologie1"></div>
									</div>
								</div>

							</div>

						</div>
					</div>
					<!-- End SmartWizard Content -->

				</form>
			</div>

		</div>
		<!-- End .box -->

	</div>
	<!-- End .span12 -->

</div>
<!-- End .row-fluid -->

