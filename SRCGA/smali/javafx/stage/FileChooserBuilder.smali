.class public final Ljavafx/stage/FileChooserBuilder;
.super Ljava/lang/Object;
.source "FileChooserBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/stage/FileChooser;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private extensionFilters:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/stage/FileChooser$ExtensionFilter;",
            ">;"
        }
    .end annotation
.end field

.field private initialDirectory:Ljava/io/File;

.field private title:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooserBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/stage/FileChooserBuilder;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljavafx/stage/FileChooserBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/stage/FileChooserBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/stage/FileChooser;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooserBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/stage/FileChooser;
    move-object v3, v0

    iget v3, v3, Ljavafx/stage/FileChooserBuilder;->__set:I

    move v2, v3

    .line 49
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/stage/FileChooser;->getExtensionFilters()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/FileChooserBuilder;->extensionFilters:Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 50
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/FileChooserBuilder;->initialDirectory:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljavafx/stage/FileChooser;->setInitialDirectory(Ljava/io/File;)V

    .line 51
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/FileChooserBuilder;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljavafx/stage/FileChooser;->setTitle(Ljava/lang/String;)V

    .line 52
    :cond_2
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooserBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/stage/FileChooserBuilder;->build()Ljavafx/stage/FileChooser;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/FileChooserBuilder;
    return-object v0
.end method

.method public build()Ljavafx/stage/FileChooser;
    .locals 5

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooserBuilder;
    new-instance v2, Ljavafx/stage/FileChooser;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/stage/FileChooser;-><init>()V

    move-object v1, v2

    .line 96
    .local v1, "x":Ljavafx/stage/FileChooser;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/stage/FileChooserBuilder;->applyTo(Ljavafx/stage/FileChooser;)V

    .line 97
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/FileChooserBuilder;
    return-object v0
.end method

.method public extensionFilters(Ljava/util/Collection;)Ljavafx/stage/FileChooserBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/stage/FileChooser$ExtensionFilter;",
            ">;)",
            "Ljavafx/stage/FileChooserBuilder;"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooserBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavafx/stage/FileChooser$ExtensionFilter;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/FileChooserBuilder;->extensionFilters:Ljava/util/Collection;

    .line 60
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/stage/FileChooserBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/stage/FileChooserBuilder;->__set:I

    .line 61
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/FileChooserBuilder;
    return-object v0
.end method

.method public varargs extensionFilters([Ljavafx/stage/FileChooser$ExtensionFilter;)Ljavafx/stage/FileChooserBuilder;
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooserBuilder;
    move-object v1, p1

    .local v1, "x":[Ljavafx/stage/FileChooser$ExtensionFilter;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/stage/FileChooserBuilder;->extensionFilters(Ljava/util/Collection;)Ljavafx/stage/FileChooserBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/FileChooserBuilder;
    return-object v0
.end method

.method public initialDirectory(Ljava/io/File;)Ljavafx/stage/FileChooserBuilder;
    .locals 6

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooserBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/io/File;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/FileChooserBuilder;->initialDirectory:Ljava/io/File;

    .line 77
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/stage/FileChooserBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/stage/FileChooserBuilder;->__set:I

    .line 78
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/FileChooserBuilder;
    return-object v0
.end method

.method public title(Ljava/lang/String;)Ljavafx/stage/FileChooserBuilder;
    .locals 6

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/FileChooserBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/FileChooserBuilder;->title:Ljava/lang/String;

    .line 87
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/stage/FileChooserBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/stage/FileChooserBuilder;->__set:I

    .line 88
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/FileChooserBuilder;
    return-object v0
.end method
