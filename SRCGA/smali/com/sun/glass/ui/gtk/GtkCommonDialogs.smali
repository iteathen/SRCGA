.class final Lcom/sun/glass/ui/gtk/GtkCommonDialogs;
.super Ljava/lang/Object;
.source "GtkCommonDialogs.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkCommonDialogs;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _showFileChooser(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;I)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
.end method

.method private static native _showFolderChooser(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method static showFileChooser(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;I)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    .locals 19

    .prologue
    .line 57
    move-object/from16 v1, p0

    .local v1, "owner":Lcom/sun/glass/ui/Window;
    move-object/from16 v2, p1

    .local v2, "folder":Ljava/lang/String;
    move-object/from16 v3, p2

    .local v3, "filename":Ljava/lang/String;
    move-object/from16 v4, p3

    .local v4, "title":Ljava/lang/String;
    move/from16 v5, p4

    .local v5, "type":I
    move/from16 v6, p5

    .local v6, "multipleMode":Z
    move-object/from16 v7, p6

    .local v7, "extensionFilters":[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;
    move/from16 v8, p7

    .local v8, "defaultFilterIndex":I
    move-object v10, v1

    if-eqz v10, :cond_0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sun/glass/ui/Window;->setEnabled(Z)V

    .line 58
    :cond_0
    move-object v10, v1

    if-nez v10, :cond_2

    const-wide/16 v10, 0x0

    :goto_0
    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move v15, v5

    move/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v18, v8

    invoke-static/range {v10 .. v18}, Lcom/sun/glass/ui/gtk/GtkCommonDialogs;->_showFileChooser(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;I)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;

    move-result-object v10

    move-object v9, v10

    .line 60
    .local v9, "result":Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    move-object v10, v1

    if-eqz v10, :cond_1

    move-object v10, v1

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sun/glass/ui/Window;->setEnabled(Z)V

    .line 61
    :cond_1
    move-object v10, v9

    move-object v1, v10

    .end local v1    # "owner":Lcom/sun/glass/ui/Window;
    return-object v1

    .line 58
    .end local v9    # "result":Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    .restart local v1    # "owner":Lcom/sun/glass/ui/Window;
    :cond_2
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/glass/ui/Window;->getNativeHandle()J

    move-result-wide v10

    goto :goto_0
.end method

.method static showFolderChooser(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 11

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "owner":Lcom/sun/glass/ui/Window;
    move-object v1, p1

    .local v1, "folder":Ljava/lang/String;
    move-object v2, p2

    .local v2, "title":Ljava/lang/String;
    move-object v6, v0

    if-eqz v6, :cond_0

    .line 66
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/Window;->setEnabled(Z)V

    .line 69
    :cond_0
    move-object v6, v0

    if-eqz v6, :cond_2

    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Lcom/sun/glass/ui/Window;->getNativeHandle()J

    move-result-wide v6

    :goto_0
    move-object v8, v1

    move-object v9, v2

    invoke-static {v6, v7, v8, v9}, Lcom/sun/glass/ui/gtk/GtkCommonDialogs;->_showFolderChooser(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 70
    .local v3, "filename":Ljava/lang/String;
    move-object v6, v3

    if-eqz v6, :cond_3

    new-instance v6, Ljava/io/File;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move-object v4, v6

    .line 73
    move-object v6, v0

    if-eqz v6, :cond_1

    .line 74
    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/Window;->setEnabled(Z)V

    :cond_1
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "owner":Lcom/sun/glass/ui/Window;
    return-object v0

    .line 69
    .end local v3    # "filename":Ljava/lang/String;
    .restart local v0    # "owner":Lcom/sun/glass/ui/Window;
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 70
    .restart local v3    # "filename":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 73
    .end local v3    # "filename":Ljava/lang/String;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    if-eqz v6, :cond_4

    .line 74
    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/Window;->setEnabled(Z)V

    :cond_4
    move-object v6, v5

    throw v6
.end method
