.class public final Ljavafx/stage/FileChooser;
.super Ljava/lang/Object;
.source "FileChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/stage/FileChooser$ExtensionFilter;
    }
.end annotation


# instance fields
.field private extensionFilters:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/stage/FileChooser$ExtensionFilter;",
            ">;"
        }
    .end annotation
.end field

.field private initialDirectory:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private initialFileName:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedExtensionFilter:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/stage/FileChooser$ExtensionFilter;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljavafx/beans/property/StringProperty;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 281
    move-object v1, v0

    .line 282
    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v2

    iput-object v2, v1, Ljavafx/stage/FileChooser;->extensionFilters:Ljavafx/collections/ObservableList;

    .line 281
    return-void
.end method

.method private findSelectedFilter(Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;)Ljavafx/stage/FileChooser$ExtensionFilter;
    .locals 8

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser;
    move-object v1, p1

    .local v1, "filter":Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;
    move-object v6, v1

    if-eqz v6, :cond_1

    .line 400
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;->getDescription()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 401
    .local v2, "description":Ljava/lang/String;
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;->getExtensions()Ljava/util/List;

    move-result-object v6

    move-object v3, v6

    .line 403
    .local v3, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v6, v0

    iget-object v6, v6, Ljavafx/stage/FileChooser;->extensionFilters:Ljavafx/collections/ObservableList;

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/stage/FileChooser$ExtensionFilter;

    move-object v5, v6

    .line 404
    .local v5, "ef":Ljavafx/stage/FileChooser$ExtensionFilter;
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/stage/FileChooser$ExtensionFilter;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v3

    move-object v7, v5

    .line 405
    invoke-virtual {v7}, Ljavafx/stage/FileChooser$ExtensionFilter;->getExtensions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 406
    move-object v6, v5

    move-object v0, v6

    .line 411
    .end local v0    # "this":Ljavafx/stage/FileChooser;
    .end local v2    # "description":Ljava/lang/String;
    .end local v3    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "ef":Ljavafx/stage/FileChooser$ExtensionFilter;
    :goto_1
    return-object v0

    .line 408
    .restart local v0    # "this":Ljavafx/stage/FileChooser;
    .restart local v2    # "description":Ljava/lang/String;
    .restart local v3    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "ef":Ljavafx/stage/FileChooser$ExtensionFilter;
    :cond_0
    goto :goto_0

    .line 411
    .end local v2    # "description":Ljava/lang/String;
    .end local v3    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "ef":Ljavafx/stage/FileChooser$ExtensionFilter;
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method private showDialog(Ljavafx/stage/Window;Lcom/sun/javafx/tk/FileChooserType;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/stage/Window;",
            "Lcom/sun/javafx/tk/FileChooserType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser;
    move-object v1, p1

    .local v1, "ownerWindow":Ljavafx/stage/Window;
    move-object v2, p2

    .local v2, "fileChooserType":Lcom/sun/javafx/tk/FileChooserType;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v5

    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    .line 417
    invoke-virtual {v6}, Ljavafx/stage/Window;->impl_getPeer()Lcom/sun/javafx/tk/TKStage;

    move-result-object v6

    :goto_0
    move-object v7, v0

    .line 418
    invoke-virtual {v7}, Ljavafx/stage/FileChooser;->getTitle()Ljava/lang/String;

    move-result-object v7

    move-object v8, v0

    .line 419
    invoke-virtual {v8}, Ljavafx/stage/FileChooser;->getInitialDirectory()Ljava/io/File;

    move-result-object v8

    move-object v9, v0

    .line 420
    invoke-virtual {v9}, Ljavafx/stage/FileChooser;->getInitialFileName()Ljava/lang/String;

    move-result-object v9

    move-object v10, v2

    move-object v11, v0

    iget-object v11, v11, Ljavafx/stage/FileChooser;->extensionFilters:Ljavafx/collections/ObservableList;

    move-object v12, v0

    .line 423
    invoke-virtual {v12}, Ljavafx/stage/FileChooser;->getSelectedExtensionFilter()Ljavafx/stage/FileChooser$ExtensionFilter;

    move-result-object v12

    .line 416
    invoke-virtual/range {v5 .. v12}, Lcom/sun/javafx/tk/Toolkit;->showFileChooser(Lcom/sun/javafx/tk/TKStage;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/sun/javafx/tk/FileChooserType;Ljava/util/List;Ljavafx/stage/FileChooser$ExtensionFilter;)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;

    move-result-object v5

    move-object v3, v5

    .line 425
    .local v3, "result":Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    move-object v5, v3

    if-nez v5, :cond_1

    .line 426
    const/4 v5, 0x0

    move-object v0, v5

    .line 434
    .end local v0    # "this":Ljavafx/stage/FileChooser;
    :goto_1
    return-object v0

    .line 417
    .end local v3    # "result":Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    .restart local v0    # "this":Ljavafx/stage/FileChooser;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 429
    .restart local v3    # "result":Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    :cond_1
    move-object v5, v3

    invoke-virtual {v5}, Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;->getFiles()Ljava/util/List;

    move-result-object v5

    move-object v4, v5

    .line 430
    .local v4, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object v5, v4

    if-eqz v5, :cond_2

    move-object v5, v4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 431
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/stage/FileChooser;->selectedExtensionFilterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v5

    move-object v6, v0

    move-object v7, v3

    .line 432
    invoke-virtual {v7}, Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;->getExtensionFilter()Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavafx/stage/FileChooser;->findSelectedFilter(Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;)Ljavafx/stage/FileChooser$ExtensionFilter;

    move-result-object v6

    .line 431
    invoke-virtual {v5, v6}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 434
    :cond_2
    move-object v5, v4

    move-object v0, v5

    goto :goto_1
.end method


# virtual methods
.method public getExtensionFilters()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/stage/FileChooser$ExtensionFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/FileChooser;->extensionFilters:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/FileChooser;
    return-object v0
.end method

.method public final getInitialDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/FileChooser;->initialDirectory:Ljavafx/beans/property/ObjectProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/FileChooser;->initialDirectory:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/FileChooser;
    return-object v0

    .restart local v0    # "this":Ljavafx/stage/FileChooser;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getInitialFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/FileChooser;->initialFileName:Ljavafx/beans/property/ObjectProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/FileChooser;->initialFileName:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/FileChooser;
    return-object v0

    .restart local v0    # "this":Ljavafx/stage/FileChooser;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getSelectedExtensionFilter()Ljavafx/stage/FileChooser$ExtensionFilter;
    .locals 2

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/FileChooser;->selectedExtensionFilter:Ljavafx/beans/property/ObjectProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/FileChooser;->selectedExtensionFilter:Ljavafx/beans/property/ObjectProperty;

    .line 333
    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/stage/FileChooser$ExtensionFilter;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/FileChooser;
    return-object v0

    .restart local v0    # "this":Ljavafx/stage/FileChooser;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/FileChooser;->title:Ljavafx/beans/property/StringProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/FileChooser;->title:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/FileChooser;
    return-object v0

    .restart local v0    # "this":Ljavafx/stage/FileChooser;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final initialDirectoryProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/FileChooser;->initialDirectory:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 240
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "initialDirectory"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/stage/FileChooser;->initialDirectory:Ljavafx/beans/property/ObjectProperty;

    .line 244
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/FileChooser;->initialDirectory:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/FileChooser;
    return-object v0
.end method

.method public final initialFileNameProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/FileChooser;->initialFileName:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 271
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "initialFileName"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/stage/FileChooser;->initialFileName:Ljavafx/beans/property/ObjectProperty;

    .line 275
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/FileChooser;->initialFileName:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/FileChooser;
    return-object v0
.end method

.method public final selectedExtensionFilterProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/stage/FileChooser$ExtensionFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/FileChooser;->selectedExtensionFilter:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 320
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "selectedExtensionFilter"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/stage/FileChooser;->selectedExtensionFilter:Ljavafx/beans/property/ObjectProperty;

    .line 324
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/FileChooser;->selectedExtensionFilter:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/FileChooser;
    return-object v0
.end method

.method public final setInitialDirectory(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser;
    move-object v1, p1

    .local v1, "value":Ljava/io/File;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/FileChooser;->initialDirectoryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method public final setInitialFileName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/FileChooser;->initialFileNameProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method public final setSelectedExtensionFilter(Ljavafx/stage/FileChooser$ExtensionFilter;)V
    .locals 4

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser;
    move-object v1, p1

    .local v1, "filter":Ljavafx/stage/FileChooser$ExtensionFilter;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/FileChooser;->selectedExtensionFilterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    .line 329
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/FileChooser;->titleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method public showOpenDialog(Ljavafx/stage/Window;)Ljava/io/File;
    .locals 6

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser;
    move-object v1, p1

    .local v1, "ownerWindow":Ljavafx/stage/Window;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lcom/sun/javafx/tk/FileChooserType;->OPEN:Lcom/sun/javafx/tk/FileChooserType;

    .line 350
    invoke-direct {v3, v4, v5}, Ljavafx/stage/FileChooser;->showDialog(Ljavafx/stage/Window;Lcom/sun/javafx/tk/FileChooserType;)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 352
    .local v2, "selectedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    move-object v3, v2

    const/4 v4, 0x0

    .line 353
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljavafx/stage/FileChooser;
    return-object v0

    .restart local v0    # "this":Ljavafx/stage/FileChooser;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public showOpenMultipleDialog(Ljavafx/stage/Window;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/stage/Window;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser;
    move-object v1, p1

    .local v1, "ownerWindow":Ljavafx/stage/Window;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lcom/sun/javafx/tk/FileChooserType;->OPEN_MULTIPLE:Lcom/sun/javafx/tk/FileChooserType;

    .line 373
    invoke-direct {v3, v4, v5}, Ljavafx/stage/FileChooser;->showDialog(Ljavafx/stage/Window;Lcom/sun/javafx/tk/FileChooserType;)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 375
    .local v2, "selectedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    move-object v3, v2

    .line 376
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljavafx/stage/FileChooser;
    return-object v0

    .restart local v0    # "this":Ljavafx/stage/FileChooser;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public showSaveDialog(Ljavafx/stage/Window;)Ljava/io/File;
    .locals 6

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser;
    move-object v1, p1

    .local v1, "ownerWindow":Ljavafx/stage/Window;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lcom/sun/javafx/tk/FileChooserType;->SAVE:Lcom/sun/javafx/tk/FileChooserType;

    .line 392
    invoke-direct {v3, v4, v5}, Ljavafx/stage/FileChooser;->showDialog(Ljavafx/stage/Window;Lcom/sun/javafx/tk/FileChooserType;)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 394
    .local v2, "selectedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    move-object v3, v2

    const/4 v4, 0x0

    .line 395
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljavafx/stage/FileChooser;
    return-object v0

    .restart local v0    # "this":Ljavafx/stage/FileChooser;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final titleProperty()Ljavafx/beans/property/StringProperty;
    .locals 7

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooser;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/FileChooser;->title:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 219
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleStringProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "title"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/stage/FileChooser;->title:Ljavafx/beans/property/StringProperty;

    .line 222
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/FileChooser;->title:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/FileChooser;
    return-object v0
.end method
