.class public Ljavafx/scene/control/TextFieldBuilder;
.super Ljavafx/scene/control/TextInputControlBuilder;
.source "TextFieldBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/TextFieldBuilder",
        "<TB;>;>",
        "Ljavafx/scene/control/TextInputControlBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/control/TextField;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private alignment:Ljavafx/geometry/Pos;

.field private onAction:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private prefColumnCount:I

.field private promptText:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFieldBuilder;, "Ljavafx/scene/control/TextFieldBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TextInputControlBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/TextFieldBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TextFieldBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/TextFieldBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/TextFieldBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public alignment(Ljavafx/geometry/Pos;)Ljavafx/scene/control/TextFieldBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Pos;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFieldBuilder;, "Ljavafx/scene/control/TextFieldBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Pos;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TextFieldBuilder;->alignment:Ljavafx/geometry/Pos;

    .line 64
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/TextFieldBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/control/TextFieldBuilder;->__set:I

    .line 65
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextFieldBuilder;, "Ljavafx/scene/control/TextFieldBuilder<TB;>;"
    return-object v0
.end method

.method public applyTo(Ljavafx/scene/control/TextField;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFieldBuilder;, "Ljavafx/scene/control/TextFieldBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/TextField;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/control/TextInputControlBuilder;->applyTo(Ljavafx/scene/control/TextInputControl;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/TextFieldBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextFieldBuilder;->alignment:Ljavafx/geometry/Pos;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TextField;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextFieldBuilder;->onAction:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TextField;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 52
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/TextFieldBuilder;->prefColumnCount:I

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TextField;->setPrefColumnCount(I)V

    .line 53
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextFieldBuilder;->promptText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TextField;->setPromptText(Ljava/lang/String;)V

    .line 54
    :cond_3
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFieldBuilder;, "Ljavafx/scene/control/TextFieldBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextFieldBuilder;->build()Ljavafx/scene/control/TextField;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFieldBuilder;, "Ljavafx/scene/control/TextFieldBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/TextField;
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFieldBuilder;, "Ljavafx/scene/control/TextFieldBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/control/TextField;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/TextField;-><init>()V

    move-object v1, v2

    .line 106
    .local v1, "x":Ljavafx/scene/control/TextField;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextFieldBuilder;->applyTo(Ljavafx/scene/control/TextField;)V

    .line 107
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextFieldBuilder;, "Ljavafx/scene/control/TextFieldBuilder<TB;>;"
    return-object v0
.end method

.method public onAction(Ljavafx/event/EventHandler;)Ljavafx/scene/control/TextFieldBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFieldBuilder;, "Ljavafx/scene/control/TextFieldBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TextFieldBuilder;->onAction:Ljavafx/event/EventHandler;

    .line 75
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/TextFieldBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/control/TextFieldBuilder;->__set:I

    .line 76
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextFieldBuilder;, "Ljavafx/scene/control/TextFieldBuilder<TB;>;"
    return-object v0
.end method

.method public prefColumnCount(I)Ljavafx/scene/control/TextFieldBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFieldBuilder;, "Ljavafx/scene/control/TextFieldBuilder<TB;>;"
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/control/TextFieldBuilder;->prefColumnCount:I

    .line 86
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/TextFieldBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/scene/control/TextFieldBuilder;->__set:I

    .line 87
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextFieldBuilder;, "Ljavafx/scene/control/TextFieldBuilder<TB;>;"
    return-object v0
.end method

.method public promptText(Ljava/lang/String;)Ljavafx/scene/control/TextFieldBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFieldBuilder;, "Ljavafx/scene/control/TextFieldBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TextFieldBuilder;->promptText:Ljava/lang/String;

    .line 97
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/TextFieldBuilder;->__set:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ljavafx/scene/control/TextFieldBuilder;->__set:I

    .line 98
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextFieldBuilder;, "Ljavafx/scene/control/TextFieldBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic promptText(Ljava/lang/String;)Ljavafx/scene/control/TextInputControlBuilder;
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFieldBuilder;, "Ljavafx/scene/control/TextFieldBuilder<TB;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextFieldBuilder;->promptText(Ljava/lang/String;)Ljavafx/scene/control/TextFieldBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextFieldBuilder;, "Ljavafx/scene/control/TextFieldBuilder<TB;>;"
    return-object v0
.end method
