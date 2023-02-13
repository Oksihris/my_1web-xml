<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    </head>
    <body style="
        margin: 0;
        padding: 0;
	    background: rgba(255, 99, 71, 0.2);
        font: normal 16px Comic Sans;
	    color: black; "
		>

        <div style="
        width: 100%; 
       background: linear-gradient(270deg, #25311b 0, #21321e 3.33%, #1d3220 6.67%, #193323 10%, #153326 13.33%, #113329 16.67%, #0c342c 20%, #07342f 23.33%, #033433 26.67%, #003436 30%, #003339 33.33%, #00333b 36.67%, #00333e 40%, #023240 43.33%, #073242 46.67%, #0d3143 50%, #133044 53.33%, #192f44 56.67%, #1f2e45 60%, #242d44 63.33%, #292c43 66.67%, #2d2b42 70%, #322a40 73.33%, #35293e 76.67%, #39283c 80%, #3c273a 83.33%, #3e2637 86.67%, #412534 90%, #422531 93.33%, #43242e 96.67%, #44242a 100%);
        
        margin: auto; 
        ">


            <h1 style="
                text-align: center;
                font: bold 35px 'Сomic Sans';
                color: #B1D9EE;
                text-shadow: -4px 2px 3px rgba(0, 0, 0, 0.47);
                ">
                <xsl:value-of select="blogpage/header" />
            </h1>
            <h2 style="
                text-align: center;
                font: bold 24px 'Roboto Slab';
                color: #B1D9EE;">
                <xsl:value-of select="blogpage/header-desc" />
            </h2>

            <xsl:for-each select="blogpage/article">
                <hr/>
                <div class="article" style="margin 10px">

                    <div style ="padding: 10px; margin: 20px; ">
                        <div style="text-align: right;">
                            <div style="
                        background:	#adfffb;
                        padding-right: 10px;
                        margin-bottom: 20px;
                        display:inline-block;
                        border:1px solid; 
                        border-radius: 15px;
                        font-style: italic; 
                        font-size:13pt;
                        ">
                                <p style="cursor: pointer;"> Автор:
                                    <xsl:value-of select="inf-meta/author" />
                                </p>
                                <p style="cursor: pointer;
                            margin-top:-16px;">
                            Дата публікації:
                                    <xsl:value-of select="inf-meta/inf" />

                                </p>
                                <p style="cursor: pointer;
                            margin-top:-16px;
                            ">
                            Ключеві слова:
                                    <xsl:value-of select="inf-meta/keyWords" />
                                </p>
                                <p style="font-style: italic;
                            margin-top:-16px;">
                            Джерела:
                                </p>
                                <xsl:for-each select="inf-meta/apps/applink">
                                    <p style="font-style: italic;
                            margin-top:-16px;">
                                        <a style=" font-style: italic; font-weight: bold;">
                                            <xsl:attribute name="href">
                                                <xsl:value-of select="value" />
                                            </xsl:attribute>
                                            <xsl:value-of select="applink-name" />
                                        </a>
                                    </p>
                                </xsl:for-each>
                            </div>
                        </div>

                        <div style="padding: 5px; border:0px solid; background: #F0FFFF;">
                            <h1 style="
                                background:white; 
                                padding: 10px;
                                margin: auto;
                                ">
                                Тема поста:
                                <xsl:value-of select="content/theme" />
                            </h1>
                            <p style="text-align: center; font-size:17px; font-family:cursive;">
                                <xsl:value-of select="content/description" />
                            </p>
                        </div>

                        <div style ="padding: 10px; margin: 20px;">
                            <img style="display: block;
                                    margin-left: auto;
                                    margin-right: auto; border: 1px solid #678E5E;" width="800" src="{inf-meta/apps/appfile}" />
                        </div>
                        <hr/>
                        <h2 style="
                            display:inline-block;
                            padding: 10px;
                            margin: 20px;">
                            Коментарі:
                        </h2>

                        <xsl:for-each select="comms/comment">
                            <xsl:choose>
                                <xsl:when test="contains(., 'Автор') = 'true'">
                                    <div style="padding: 10px; background:#F0FFFF;  border-radius: 40px;margin-left: 50%;margin-bottom: 1%;">
                                        <p style="margin: 7px 3px 12px 12px; font-style:italic; color: black; font-size:23px;">
                                            <span style = "font-weight:bold;">
                                                <xsl:value-of select="comment-author" />
                                            </span>
                                            пише:
                                        </p>
                                        <p style="margin:7px 3px 12px 32px; padding: 3px; font-size:18px;">
                                            <xsl:value-of select="commentText" />
                                        </p>

                                        <span style="font-style:italic;padding: 3px; text-align:right; font-size:15px;">
                                            <xsl:value-of select="comment-tags" />
                                        </span>
                                    </div>
                                </xsl:when>
                                <xsl:otherwise>
                                    <div style="padding: 10px; background:#F0FFFF;border-radius: 40px; margin-right: 50%; margin-bottom: 1%;">
                                        <p style="margin: 7px 3px 12px 12px; font-style:italic; color: black; font-size:23px;">
                                            <span style = "font-weight:bold;">
                                                <xsl:value-of select="comment-author" />
                                            </span>
                                            пише:
                                        </p>
                                        <p style="margin:7px 3px 12px 32px; padding: 3px; font-size:18px;">
                                            <xsl:value-of select="commentText" />
                                        </p>

                                        <span style="font-style:italic;padding: 3px; text-align:right; font-size:15px;">
                                            <xsl:value-of select="comment-tags" />
                                        </span>
                                    </div>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </div>
                </div>
            </xsl:for-each>
        </div>
    </body>
</html>
