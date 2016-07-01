.class public abstract Ljavafx/scene/control/TextInputControlBuilder;
.super Ljavafx/scene/control/ControlBuilder;
.source "TextInputControlBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/TextInputControlBuilder",
        "<TB;>;>",
        "Ljavafx/scene/control/ControlBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private editable:Z

.field private promptText:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControlBuilder;, "Ljavafx/scene/control/TextInputControlBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ControlBuilder;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/TextInputControl;)V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControlBuilder;, "Ljavafx/scene/control/TextInputControlBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/TextInputControl;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/control/ControlBuilder;->applyTo(Ljavafx/scene/control/Control;)V

    .line 44
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/TextInputControlBuilder;->__set:I

    move v2, v3

    .line 45
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/TextInputControlBuilder;->editable:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TextInputControl;->setEditable(Z)V

    .line 46
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextInputControlBuilder;->promptText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TextInputControl;->setPromptText(Ljava/lang/String;)V

    .line 47
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextInputControlBuilder;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TextInputControl;->setText(Ljava/lang/String;)V

    .line 48
    :cond_2
    return-void
.end method

.method public editable(Z)Ljavafx/scene/control/TextInputControlBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControlBuilder;, "Ljavafx/scene/control/TextInputControlBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/TextInputControlBuilder;->editable:Z

    .line 57
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/TextInputControlBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/control/TextInputControlBuilder;->__set:I

    .line 58
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextInputControlBuilder;, "Ljavafx/scene/control/TextInputControlBuilder<TB;>;"
    return-object v0
.end method

.method public promptText(Ljava/lang/String;)Ljavafx/scene/control/TextInputControlBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControlBuilder;, "Ljavafx/scene/control/TextInputControlBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TextInputControlBuilder;->promptText:Ljava/lang/String;

    .line 69
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/TextInputControlBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/control/TextInputControlBuilder;->__set:I

    .line 70
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextInputControlBuilder;, "Ljavafx/scene/control/TextInputControlBuilder<TB;>;"
    return-object v0
.end method

.method public text(Ljava/lang/String;)Ljavafx/scene/control/TextInputControlBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControlBuilder;, "Ljavafx/scene/control/TextInputControlBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TextInputControlBuilder;->text:Ljava/lang/String;

    .line 80
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/TextInputControlBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/scene/control/TextInputControlBuilder;->__set:I

    .line 81
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextInputControlBuilder;, "Ljavafx/scene/control/TextInputControlBuilder<TB;>;"
    return-object v0
.end method
