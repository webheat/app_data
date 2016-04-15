<h2><?phpecho$title;?></h2>


<?phpechovalidation_errors();?>


<?phpechoform_open('news/query');?>


	<labelfor="title">appname</label>
	<inputtype="input"name="Appname"/><br/>

	<labelfor="text">appdata</label><textareaname="Appdata"></textarea><br/>
	<inputtype="submit"name="submit"value="query items"/>

</form>
