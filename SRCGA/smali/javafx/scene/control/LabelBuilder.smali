.class public Ljavafx/scene/control/LabelBuilder;
.super Ljavafx/scene/control/LabeledBuilder;
.source "LabelBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/LabelBuilder",
        "<TB;>;>",
        "Ljavafx/scene/control/LabeledBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/control/Label;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:Z

.field private labelFor:Ljavafx/scene/Node;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/LabelBuilder;, "Ljavafx/scene/control/LabelBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/LabeledBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/LabelBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/LabelBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/LabelBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/LabelBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/Label;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/LabelBuilder;, "Ljavafx/scene/control/LabelBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/Label;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/control/LabeledBuilder;->applyTo(Ljavafx/scene/control/Labeled;)V

    .line 49
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/control/LabelBuilder;->__set:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/LabelBuilder;->labelFor:Ljavafx/scene/Node;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Label;->setLabelFor(Ljavafx/scene/Node;)V

    .line 50
    :cond_0
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/LabelBuilder;, "Ljavafx/scene/control/LabelBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/LabelBuilder;->build()Ljavafx/scene/control/Label;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/LabelBuilder;, "Ljavafx/scene/control/LabelBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/Label;
    .locals 5

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/LabelBuilder;, "Ljavafx/scene/control/LabelBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/control/Label;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/Label;-><init>()V

    move-object v1, v2

    .line 68
    .local v1, "x":Ljavafx/scene/control/Label;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/LabelBuilder;->applyTo(Ljavafx/scene/control/Label;)V

    .line 69
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/LabelBuilder;, "Ljavafx/scene/control/LabelBuilder<TB;>;"
    return-object v0
.end method

.method public labelFor(Ljavafx/scene/Node;)Ljavafx/scene/control/LabelBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/LabelBuilder;, "Ljavafx/scene/control/LabelBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/LabelBuilder;->labelFor:Ljavafx/scene/Node;

    .line 59
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/control/LabelBuilder;->__set:Z

    .line 60
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/LabelBuilder;, "Ljavafx/scene/control/LabelBuilder<TB;>;"
    return-object v0
.end method
