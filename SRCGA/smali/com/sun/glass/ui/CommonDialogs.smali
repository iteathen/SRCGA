.class public Lcom/sun/glass/ui/CommonDialogs;
.super Ljava/lang/Object;
.source "CommonDialogs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;,
        Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;,
        Lcom/sun/glass/ui/CommonDialogs$Type;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/CommonDialogs;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 166
    return-void
.end method

.method private static convertFolder(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "folder":Ljava/io/File;
    move-object v2, v0

    if-eqz v2, :cond_1

    .line 231
    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 242
    .end local v0    # "folder":Ljava/io/File;
    :goto_0
    return-object v0

    .line 234
    .restart local v0    # "folder":Ljava/io/File;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 235
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Unable to get a canonical path for folder"

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 238
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Folder parameter must be a valid folder"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 242
    :cond_1
    const-string v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method private static convertTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "title":Ljava/lang/String;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    :goto_0
    move-object v0, v1

    .end local v0    # "title":Ljava/lang/String;
    return-object v0

    .restart local v0    # "title":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method protected static createFileChooserResult([Ljava/lang/String;[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;I)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    .locals 14

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "files":[Ljava/lang/String;
    move-object v1, p1

    .local v1, "extensionFilters":[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;
    move/from16 v2, p2

    .local v2, "index":I
    new-instance v8, Ljava/util/ArrayList;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v8

    .line 254
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object v8, v0

    move-object v4, v8

    move-object v8, v4

    array-length v8, v8

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_0

    move-object v8, v4

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 255
    .local v7, "s":Ljava/lang/String;
    move-object v8, v3

    new-instance v9, Ljava/io/File;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v7

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 254
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 257
    .end local v7    # "s":Ljava/lang/String;
    :cond_0
    new-instance v8, Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v3

    move-object v11, v1

    if-eqz v11, :cond_1

    move v11, v2

    if-ltz v11, :cond_1

    move v11, v2

    move-object v12, v1

    array-length v12, v12

    if-lt v11, v12, :cond_2

    :cond_1
    const/4 v11, 0x0

    :goto_1
    invoke-direct {v9, v10, v11}, Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;-><init>(Ljava/util/List;Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;)V

    move-object v0, v8

    .end local v0    # "files":[Ljava/lang/String;
    return-object v0

    .restart local v0    # "files":[Ljava/lang/String;
    :cond_2
    move-object v11, v1

    move v12, v2

    aget-object v11, v11, v12

    goto :goto_1
.end method

.method public static showFileChooser(Lcom/sun/glass/ui/Window;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;I)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/glass/ui/Window;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/List",
            "<",
            "Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;",
            ">;I)",
            "Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;"
        }
    .end annotation

    .prologue
    .line 189
    move-object/from16 v0, p0

    .local v0, "owner":Lcom/sun/glass/ui/Window;
    move-object/from16 v1, p1

    .local v1, "folder":Ljava/io/File;
    move-object/from16 v2, p2

    .local v2, "filename":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "title":Ljava/lang/String;
    move/from16 v4, p4

    .local v4, "type":I
    move/from16 v5, p5

    .local v5, "multipleMode":Z
    move-object/from16 v6, p6

    .local v6, "extensionFilters":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;>;"
    move/from16 v7, p7

    .local v7, "defaultFilterIndex":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 190
    move-object v10, v1

    invoke-static {v10}, Lcom/sun/glass/ui/CommonDialogs;->convertFolder(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 191
    .local v8, "_folder":Ljava/lang/String;
    move-object v10, v2

    if-nez v10, :cond_0

    .line 192
    const-string v10, ""

    move-object v2, v10

    .line 195
    :cond_0
    move v10, v4

    if-eqz v10, :cond_1

    move v10, v4

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    .line 196
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const-string v12, "Type parameter must be equal to one of the constants from Type"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 199
    :cond_1
    const/4 v10, 0x0

    move-object v9, v10

    .line 200
    .local v9, "_extensionFilters":[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;
    move-object v10, v6

    if-eqz v10, :cond_2

    .line 201
    move-object v10, v6

    move-object v11, v6

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;

    move-object v9, v10

    .line 204
    :cond_2
    move-object v10, v6

    if-eqz v10, :cond_3

    move-object v10, v6

    .line 205
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    move v10, v7

    if-ltz v10, :cond_3

    move v10, v7

    move-object v11, v6

    .line 207
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lt v10, v11, :cond_4

    .line 208
    :cond_3
    const/4 v10, 0x0

    move v7, v10

    .line 211
    :cond_4
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v10

    move-object v11, v0

    move-object v12, v8

    move-object v13, v2

    move-object v14, v3

    .line 212
    invoke-static {v14}, Lcom/sun/glass/ui/CommonDialogs;->convertTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move v15, v4

    move/from16 v16, v5

    move-object/from16 v17, v9

    move/from16 v18, v7

    invoke-virtual/range {v10 .. v18}, Lcom/sun/glass/ui/Application;->staticCommonDialogs_showFileChooser(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;I)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;

    move-result-object v10

    move-object v0, v10

    .end local v0    # "owner":Lcom/sun/glass/ui/Window;
    return-object v0
.end method

.method public static showFolderChooser(Lcom/sun/glass/ui/Window;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 7

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "owner":Lcom/sun/glass/ui/Window;
    move-object v1, p1

    .local v1, "folder":Ljava/io/File;
    move-object v2, p2

    .local v2, "title":Ljava/lang/String;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 226
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v3

    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Lcom/sun/glass/ui/CommonDialogs;->convertFolder(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-static {v6}, Lcom/sun/glass/ui/CommonDialogs;->convertTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/Application;->staticCommonDialogs_showFolderChooser(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "owner":Lcom/sun/glass/ui/Window;
    return-object v0
.end method
