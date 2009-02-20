<g:set var="updateElement" value="${update ?: 'contentPane'}" />
<div id="infoLinks" style="margin-left:500px;">
    <g:remoteLink class="actionIcon" controller="content" action="editWikiPage" id="${wikiPage?.title}" update="${updateElement}">
        <img border="0" src="${createLinkTo(dir:'images/','icon-edit.png')}" width="15" height="15" alt="Icon Edit" class="inlineIcon" border="0" />
    </g:remoteLink>
    <g:remoteLink controller="content" action="editWikiPage" id="${wikiPage?.title}" update="${updateElement}">Edit</g:remoteLink>
    <br/>
    <g:remoteLink update="${updateElement}" controller="content" id="${wikiPage?.title}" params="[xhr:true, update:updateElement]"><img src="${createLinkTo(dir:'images/','icon-edit.png')}" width="15" height="15" alt="Icon Edit" class="inlineIcon" border="0" /></g:remoteLink>
    <g:remoteLink update="${updateElement}" controller="content" id="${wikiPage?.title}" params="[xhr:true, update:updateElement]">View Page</g:remoteLink>
</div>
<g:if test="${!update}">
    <h1>Page: ${wikiPage?.title}</h1>
</g:if>
<p>
    <strong>First Created:</strong> ${wikiPage?.dateCreated} by <strong>${versions[0].author.login}</strong>
</p>
<p>
    <strong>Last Updated:</strong> ${wikiPage?.lastUpdated} by <strong>${versions[-1].author.login}</strong>
</p>

<h3>Versions:</h3>
<div id="versions">
    <g:render template="versionList" model="[versions:versions, wikiPage:wikiPage, update:updateElement]" />
</div>
