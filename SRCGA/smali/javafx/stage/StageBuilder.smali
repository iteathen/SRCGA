.class public Ljavafx/stage/StageBuilder;
.super Ljavafx/stage/WindowBuilder;
.source "StageBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/stage/StageBuilder",
        "<TB;>;>",
        "Ljavafx/stage/WindowBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/stage/Stage;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private fullScreen:Z

.field private iconified:Z

.field private icons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation
.end field

.field private maxHeight:D

.field private maxWidth:D

.field private minHeight:D

.field private minWidth:D

.field private resizable:Z

.field private scene:Ljavafx/scene/Scene;

.field private style:Ljavafx/stage/StageStyle;

.field private title:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/stage/WindowBuilder;-><init>()V

    .line 181
    move-object v1, v0

    sget-object v2, Ljavafx/stage/StageStyle;->DECORATED:Ljavafx/stage/StageStyle;

    iput-object v2, v1, Ljavafx/stage/StageBuilder;->style:Ljavafx/stage/StageStyle;

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/stage/StageBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/stage/StageBuilder;->__set:I

    .line 49
    return-void
.end method

.method public static create()Ljavafx/stage/StageBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/stage/StageBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/stage/StageBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/stage/StageBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/stage/Stage;)V
    .locals 8

    .prologue
    .line 51
    move-object v1, p0

    .local v1, "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/stage/Stage;
    move-object v5, v1

    move-object v6, v2

    invoke-super {v5, v6}, Ljavafx/stage/WindowBuilder;->applyTo(Ljavafx/stage/Window;)V

    .line 52
    move-object v5, v1

    iget v5, v5, Ljavafx/stage/StageBuilder;->__set:I

    move v3, v5

    .line 53
    .local v3, "set":I
    :goto_0
    move v5, v3

    if-eqz v5, :cond_0

    .line 54
    move v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    move v4, v5

    .line 55
    .local v4, "i":I
    move v5, v3

    const/4 v6, 0x1

    move v7, v4

    shl-int/2addr v6, v7

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v3, v5

    .line 56
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 68
    :goto_1
    goto :goto_0

    .line 57
    :pswitch_0
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/stage/StageBuilder;->fullScreen:Z

    invoke-virtual {v5, v6}, Ljavafx/stage/Stage;->setFullScreen(Z)V

    goto :goto_1

    .line 58
    :pswitch_1
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/stage/StageBuilder;->iconified:Z

    invoke-virtual {v5, v6}, Ljavafx/stage/Stage;->setIconified(Z)V

    goto :goto_1

    .line 59
    :pswitch_2
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/stage/Stage;->getIcons()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljavafx/stage/StageBuilder;->icons:Ljava/util/Collection;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v5

    goto :goto_1

    .line 60
    :pswitch_3
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/stage/StageBuilder;->maxHeight:D

    invoke-virtual {v5, v6, v7}, Ljavafx/stage/Stage;->setMaxHeight(D)V

    goto :goto_1

    .line 61
    :pswitch_4
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/stage/StageBuilder;->maxWidth:D

    invoke-virtual {v5, v6, v7}, Ljavafx/stage/Stage;->setMaxWidth(D)V

    goto :goto_1

    .line 62
    :pswitch_5
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/stage/StageBuilder;->minHeight:D

    invoke-virtual {v5, v6, v7}, Ljavafx/stage/Stage;->setMinHeight(D)V

    goto :goto_1

    .line 63
    :pswitch_6
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/stage/StageBuilder;->minWidth:D

    invoke-virtual {v5, v6, v7}, Ljavafx/stage/Stage;->setMinWidth(D)V

    goto :goto_1

    .line 64
    :pswitch_7
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/stage/StageBuilder;->resizable:Z

    invoke-virtual {v5, v6}, Ljavafx/stage/Stage;->setResizable(Z)V

    goto :goto_1

    .line 65
    :pswitch_8
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/stage/StageBuilder;->scene:Ljavafx/scene/Scene;

    invoke-virtual {v5, v6}, Ljavafx/stage/Stage;->setScene(Ljavafx/scene/Scene;)V

    goto :goto_1

    .line 66
    :pswitch_9
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/stage/StageBuilder;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljavafx/stage/Stage;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 69
    .end local v4    # "i":I
    :cond_0
    return-void

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/stage/StageBuilder;->build()Ljavafx/stage/Stage;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/stage/Stage;
    .locals 6

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    new-instance v2, Ljavafx/stage/Stage;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/StageBuilder;->style:Ljavafx/stage/StageStyle;

    invoke-direct {v3, v4}, Ljavafx/stage/Stage;-><init>(Ljavafx/stage/StageStyle;)V

    move-object v1, v2

    .line 207
    .local v1, "x":Ljavafx/stage/Stage;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/stage/StageBuilder;->applyTo(Ljavafx/stage/Stage;)V

    .line 208
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    return-object v0
.end method

.method public fullScreen(Z)Ljavafx/stage/StageBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/stage/StageBuilder;->fullScreen:Z

    .line 78
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/stage/StageBuilder;->__set(I)V

    .line 79
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    return-object v0
.end method

.method public iconified(Z)Ljavafx/stage/StageBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/stage/StageBuilder;->iconified:Z

    .line 89
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljavafx/stage/StageBuilder;->__set(I)V

    .line 90
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    return-object v0
.end method

.method public icons(Ljava/util/Collection;)Ljavafx/stage/StageBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/image/Image;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavafx/scene/image/Image;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/StageBuilder;->icons:Ljava/util/Collection;

    .line 100
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljavafx/stage/StageBuilder;->__set(I)V

    .line 101
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    return-object v0
.end method

.method public varargs icons([Ljavafx/scene/image/Image;)Ljavafx/stage/StageBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/scene/image/Image;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljavafx/scene/image/Image;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/stage/StageBuilder;->icons(Ljava/util/Collection;)Ljavafx/stage/StageBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    return-object v0
.end method

.method public maxHeight(D)Ljavafx/stage/StageBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/stage/StageBuilder;->maxHeight:D

    .line 119
    move-object v3, v0

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljavafx/stage/StageBuilder;->__set(I)V

    .line 120
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    return-object v0
.end method

.method public maxWidth(D)Ljavafx/stage/StageBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/stage/StageBuilder;->maxWidth:D

    .line 131
    move-object v3, v0

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljavafx/stage/StageBuilder;->__set(I)V

    .line 132
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    return-object v0
.end method

.method public minHeight(D)Ljavafx/stage/StageBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/stage/StageBuilder;->minHeight:D

    .line 143
    move-object v3, v0

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljavafx/stage/StageBuilder;->__set(I)V

    .line 144
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    return-object v0
.end method

.method public minWidth(D)Ljavafx/stage/StageBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/stage/StageBuilder;->minWidth:D

    .line 155
    move-object v3, v0

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Ljavafx/stage/StageBuilder;->__set(I)V

    .line 156
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    return-object v0
.end method

.method public resizable(Z)Ljavafx/stage/StageBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/stage/StageBuilder;->resizable:Z

    .line 166
    move-object v2, v0

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljavafx/stage/StageBuilder;->__set(I)V

    .line 167
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    return-object v0
.end method

.method public scene(Ljavafx/scene/Scene;)Ljavafx/stage/StageBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Scene;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/StageBuilder;->scene:Ljavafx/scene/Scene;

    .line 177
    move-object v2, v0

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljavafx/stage/StageBuilder;->__set(I)V

    .line 178
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    return-object v0
.end method

.method public style(Ljavafx/stage/StageStyle;)Ljavafx/stage/StageBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/stage/StageStyle;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/stage/StageStyle;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/StageBuilder;->style:Ljavafx/stage/StageStyle;

    .line 188
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    return-object v0
.end method

.method public title(Ljava/lang/String;)Ljavafx/stage/StageBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/StageBuilder;->title:Ljava/lang/String;

    .line 198
    move-object v2, v0

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljavafx/stage/StageBuilder;->__set(I)V

    .line 199
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/StageBuilder;, "Ljavafx/stage/StageBuilder<TB;>;"
    return-object v0
.end method
