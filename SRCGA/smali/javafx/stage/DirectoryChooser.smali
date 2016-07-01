.class public final Ljavafx/stage/DirectoryChooser;
.super Ljava/lang/Object;
.source "DirectoryChooser.java"


# instance fields
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

.field private title:Ljavafx/beans/property/StringProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/DirectoryChooser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInitialDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/DirectoryChooser;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/DirectoryChooser;->initialDirectory:Ljavafx/beans/property/ObjectProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/DirectoryChooser;->initialDirectory:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/DirectoryChooser;
    return-object v0

    .restart local v0    # "this":Ljavafx/stage/DirectoryChooser;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/DirectoryChooser;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/DirectoryChooser;->title:Ljavafx/beans/property/StringProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/DirectoryChooser;->title:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/DirectoryChooser;
    return-object v0

    .restart local v0    # "this":Ljavafx/stage/DirectoryChooser;
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
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/DirectoryChooser;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/DirectoryChooser;->initialDirectory:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 83
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "initialDirectory"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/stage/DirectoryChooser;->initialDirectory:Ljavafx/beans/property/ObjectProperty;

    .line 87
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/DirectoryChooser;->initialDirectory:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/DirectoryChooser;
    return-object v0
.end method

.method public final setInitialDirectory(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/DirectoryChooser;
    move-object v1, p1

    .local v1, "value":Ljava/io/File;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/DirectoryChooser;->initialDirectoryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/DirectoryChooser;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/DirectoryChooser;->titleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public showDialog(Ljavafx/stage/Window;)Ljava/io/File;
    .locals 6

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/DirectoryChooser;
    move-object v1, p1

    .local v1, "ownerWindow":Ljavafx/stage/Window;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 104
    invoke-virtual {v3}, Ljavafx/stage/Window;->impl_getPeer()Lcom/sun/javafx/tk/TKStage;

    move-result-object v3

    :goto_0
    move-object v4, v0

    .line 105
    invoke-virtual {v4}, Ljavafx/stage/DirectoryChooser;->getTitle()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    .line 106
    invoke-virtual {v5}, Ljavafx/stage/DirectoryChooser;->getInitialDirectory()Ljava/io/File;

    move-result-object v5

    .line 103
    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/javafx/tk/Toolkit;->showDirectoryChooser(Lcom/sun/javafx/tk/TKStage;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/DirectoryChooser;
    return-object v0

    .line 104
    .restart local v0    # "this":Ljavafx/stage/DirectoryChooser;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final titleProperty()Ljavafx/beans/property/StringProperty;
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/DirectoryChooser;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/DirectoryChooser;->title:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 62
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleStringProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "title"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/stage/DirectoryChooser;->title:Ljavafx/beans/property/StringProperty;

    .line 65
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/DirectoryChooser;->title:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/DirectoryChooser;
    return-object v0
.end method
