.class public final Ljavafx/stage/DirectoryChooserBuilder;
.super Ljava/lang/Object;
.source "DirectoryChooserBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/stage/DirectoryChooser;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private initialDirectory:Ljava/io/File;

.field private title:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/DirectoryChooserBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/stage/DirectoryChooserBuilder;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljavafx/stage/DirectoryChooserBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/stage/DirectoryChooserBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/stage/DirectoryChooser;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/DirectoryChooserBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/stage/DirectoryChooser;
    move-object v3, v0

    iget v3, v3, Ljavafx/stage/DirectoryChooserBuilder;->__set:I

    move v2, v3

    .line 49
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/DirectoryChooserBuilder;->initialDirectory:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljavafx/stage/DirectoryChooser;->setInitialDirectory(Ljava/io/File;)V

    .line 50
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/DirectoryChooserBuilder;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljavafx/stage/DirectoryChooser;->setTitle(Ljava/lang/String;)V

    .line 51
    :cond_1
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/DirectoryChooserBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/stage/DirectoryChooserBuilder;->build()Ljavafx/stage/DirectoryChooser;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/DirectoryChooserBuilder;
    return-object v0
.end method

.method public build()Ljavafx/stage/DirectoryChooser;
    .locals 5

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/DirectoryChooserBuilder;
    new-instance v2, Ljavafx/stage/DirectoryChooser;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/stage/DirectoryChooser;-><init>()V

    move-object v1, v2

    .line 78
    .local v1, "x":Ljavafx/stage/DirectoryChooser;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/stage/DirectoryChooserBuilder;->applyTo(Ljavafx/stage/DirectoryChooser;)V

    .line 79
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/DirectoryChooserBuilder;
    return-object v0
.end method

.method public initialDirectory(Ljava/io/File;)Ljavafx/stage/DirectoryChooserBuilder;
    .locals 6

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/DirectoryChooserBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/io/File;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/DirectoryChooserBuilder;->initialDirectory:Ljava/io/File;

    .line 59
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/stage/DirectoryChooserBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/stage/DirectoryChooserBuilder;->__set:I

    .line 60
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/DirectoryChooserBuilder;
    return-object v0
.end method

.method public title(Ljava/lang/String;)Ljavafx/stage/DirectoryChooserBuilder;
    .locals 6

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/DirectoryChooserBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/DirectoryChooserBuilder;->title:Ljava/lang/String;

    .line 69
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/stage/DirectoryChooserBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/stage/DirectoryChooserBuilder;->__set:I

    .line 70
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/DirectoryChooserBuilder;
    return-object v0
.end method
