.class public Ljavafx/scene/control/TextAreaBuilder;
.super Ljavafx/scene/control/TextInputControlBuilder;
.source "TextAreaBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/TextAreaBuilder",
        "<TB;>;>",
        "Ljavafx/scene/control/TextInputControlBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/control/TextArea;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private paragraphs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private prefColumnCount:I

.field private prefRowCount:I

.field private promptText:Ljava/lang/String;

.field private scrollLeft:D

.field private scrollTop:D

.field private wrapText:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TextInputControlBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/TextAreaBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TextAreaBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/TextAreaBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/TextAreaBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/TextArea;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/TextArea;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/control/TextInputControlBuilder;->applyTo(Ljavafx/scene/control/TextInputControl;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/TextAreaBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TextArea;->getParagraphs()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextAreaBuilder;->paragraphs:Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/TextAreaBuilder;->prefColumnCount:I

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TextArea;->setPrefColumnCount(I)V

    .line 52
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/TextAreaBuilder;->prefRowCount:I

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TextArea;->setPrefRowCount(I)V

    .line 53
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextAreaBuilder;->promptText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TextArea;->setPromptText(Ljava/lang/String;)V

    .line 54
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/control/TextAreaBuilder;->scrollLeft:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TextArea;->setScrollLeft(D)V

    .line 55
    :cond_4
    move v3, v2

    const/16 v4, 0x20

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/control/TextAreaBuilder;->scrollTop:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TextArea;->setScrollTop(D)V

    .line 56
    :cond_5
    move v3, v2

    const/16 v4, 0x40

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_6

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/TextAreaBuilder;->wrapText:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TextArea;->setWrapText(Z)V

    .line 57
    :cond_6
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextAreaBuilder;->build()Ljavafx/scene/control/TextArea;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/TextArea;
    .locals 5

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/control/TextArea;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/TextArea;-><init>()V

    move-object v1, v2

    .line 149
    .local v1, "x":Ljavafx/scene/control/TextArea;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextAreaBuilder;->applyTo(Ljavafx/scene/control/TextArea;)V

    .line 150
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    return-object v0
.end method

.method public paragraphs(Ljava/util/Collection;)Ljavafx/scene/control/TextAreaBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/CharSequence;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TextAreaBuilder;->paragraphs:Ljava/util/Collection;

    .line 66
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/TextAreaBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/control/TextAreaBuilder;->__set:I

    .line 67
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    return-object v0
.end method

.method public varargs paragraphs([Ljava/lang/CharSequence;)Ljavafx/scene/control/TextAreaBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextAreaBuilder;->paragraphs(Ljava/util/Collection;)Ljavafx/scene/control/TextAreaBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    return-object v0
.end method

.method public prefColumnCount(I)Ljavafx/scene/control/TextAreaBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/control/TextAreaBuilder;->prefColumnCount:I

    .line 84
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/TextAreaBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/control/TextAreaBuilder;->__set:I

    .line 85
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    return-object v0
.end method

.method public prefRowCount(I)Ljavafx/scene/control/TextAreaBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/control/TextAreaBuilder;->prefRowCount:I

    .line 95
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/TextAreaBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/scene/control/TextAreaBuilder;->__set:I

    .line 96
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    return-object v0
.end method

.method public promptText(Ljava/lang/String;)Ljavafx/scene/control/TextAreaBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TextAreaBuilder;->promptText:Ljava/lang/String;

    .line 107
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/TextAreaBuilder;->__set:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ljavafx/scene/control/TextAreaBuilder;->__set:I

    .line 108
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic promptText(Ljava/lang/String;)Ljavafx/scene/control/TextInputControlBuilder;
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextAreaBuilder;->promptText(Ljava/lang/String;)Ljavafx/scene/control/TextAreaBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    return-object v0
.end method

.method public scrollLeft(D)Ljavafx/scene/control/TextAreaBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/TextAreaBuilder;->scrollLeft:D

    .line 118
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/control/TextAreaBuilder;->__set:I

    const/16 v5, 0x10

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Ljavafx/scene/control/TextAreaBuilder;->__set:I

    .line 119
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    return-object v0
.end method

.method public scrollTop(D)Ljavafx/scene/control/TextAreaBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/TextAreaBuilder;->scrollTop:D

    .line 129
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/control/TextAreaBuilder;->__set:I

    const/16 v5, 0x20

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Ljavafx/scene/control/TextAreaBuilder;->__set:I

    .line 130
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    return-object v0
.end method

.method public wrapText(Z)Ljavafx/scene/control/TextAreaBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/TextAreaBuilder;->wrapText:Z

    .line 140
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/TextAreaBuilder;->__set:I

    const/16 v4, 0x40

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Ljavafx/scene/control/TextAreaBuilder;->__set:I

    .line 141
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextAreaBuilder;, "Ljavafx/scene/control/TextAreaBuilder<TB;>;"
    return-object v0
.end method
