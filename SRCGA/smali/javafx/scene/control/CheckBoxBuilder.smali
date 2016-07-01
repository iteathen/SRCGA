.class public Ljavafx/scene/control/CheckBoxBuilder;
.super Ljavafx/scene/control/ButtonBaseBuilder;
.source "CheckBoxBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/CheckBoxBuilder",
        "<TB;>;>",
        "Ljavafx/scene/control/ButtonBaseBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/control/CheckBox;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private allowIndeterminate:Z

.field private indeterminate:Z

.field private selected:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxBuilder;, "Ljavafx/scene/control/CheckBoxBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ButtonBaseBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/CheckBoxBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/CheckBoxBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/CheckBoxBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/CheckBoxBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public allowIndeterminate(Z)Ljavafx/scene/control/CheckBoxBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxBuilder;, "Ljavafx/scene/control/CheckBoxBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/CheckBoxBuilder;->allowIndeterminate:Z

    .line 62
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/CheckBoxBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/control/CheckBoxBuilder;->__set:I

    .line 63
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/CheckBoxBuilder;, "Ljavafx/scene/control/CheckBoxBuilder<TB;>;"
    return-object v0
.end method

.method public applyTo(Ljavafx/scene/control/CheckBox;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxBuilder;, "Ljavafx/scene/control/CheckBoxBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/CheckBox;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/control/ButtonBaseBuilder;->applyTo(Ljavafx/scene/control/ButtonBase;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/CheckBoxBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/CheckBoxBuilder;->allowIndeterminate:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/control/CheckBox;->setAllowIndeterminate(Z)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/CheckBoxBuilder;->indeterminate:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/control/CheckBox;->setIndeterminate(Z)V

    .line 52
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/CheckBoxBuilder;->selected:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/control/CheckBox;->setSelected(Z)V

    .line 53
    :cond_2
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxBuilder;, "Ljavafx/scene/control/CheckBoxBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/CheckBoxBuilder;->build()Ljavafx/scene/control/CheckBox;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBoxBuilder;, "Ljavafx/scene/control/CheckBoxBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/CheckBox;
    .locals 5

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxBuilder;, "Ljavafx/scene/control/CheckBoxBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/control/CheckBox;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/CheckBox;-><init>()V

    move-object v1, v2

    .line 93
    .local v1, "x":Ljavafx/scene/control/CheckBox;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/CheckBoxBuilder;->applyTo(Ljavafx/scene/control/CheckBox;)V

    .line 94
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/CheckBoxBuilder;, "Ljavafx/scene/control/CheckBoxBuilder<TB;>;"
    return-object v0
.end method

.method public indeterminate(Z)Ljavafx/scene/control/CheckBoxBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxBuilder;, "Ljavafx/scene/control/CheckBoxBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/CheckBoxBuilder;->indeterminate:Z

    .line 73
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/CheckBoxBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/control/CheckBoxBuilder;->__set:I

    .line 74
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/CheckBoxBuilder;, "Ljavafx/scene/control/CheckBoxBuilder<TB;>;"
    return-object v0
.end method

.method public selected(Z)Ljavafx/scene/control/CheckBoxBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxBuilder;, "Ljavafx/scene/control/CheckBoxBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/CheckBoxBuilder;->selected:Z

    .line 84
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/CheckBoxBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/scene/control/CheckBoxBuilder;->__set:I

    .line 85
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/CheckBoxBuilder;, "Ljavafx/scene/control/CheckBoxBuilder<TB;>;"
    return-object v0
.end method
