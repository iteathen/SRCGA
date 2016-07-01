.class public abstract Ljavafx/stage/WindowBuilder;
.super Ljava/lang/Object;
.source "WindowBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/stage/WindowBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private eventDispatcher:Ljavafx/event/EventDispatcher;

.field private focused:Z

.field private height:D

.field private onCloseRequest:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onHidden:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onHiding:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onShowing:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onShown:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;"
        }
    .end annotation
.end field

.field private opacity:D

.field private width:D

.field private x:D

.field private y:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/stage/WindowBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/stage/WindowBuilder;->__set:I

    .line 44
    return-void
.end method


# virtual methods
.method public applyTo(Ljavafx/stage/Window;)V
    .locals 8

    .prologue
    .line 46
    move-object v1, p0

    .local v1, "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/stage/Window;
    move-object v5, v1

    iget v5, v5, Ljavafx/stage/WindowBuilder;->__set:I

    move v3, v5

    .line 47
    .local v3, "set":I
    :goto_0
    move v5, v3

    if-eqz v5, :cond_0

    .line 48
    move v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    move v4, v5

    .line 49
    .local v4, "i":I
    move v5, v3

    const/4 v6, 0x1

    move v7, v4

    shl-int/2addr v6, v7

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v3, v5

    .line 50
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 64
    :goto_1
    goto :goto_0

    .line 51
    :pswitch_0
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/stage/WindowBuilder;->eventDispatcher:Ljavafx/event/EventDispatcher;

    invoke-virtual {v5, v6}, Ljavafx/stage/Window;->setEventDispatcher(Ljavafx/event/EventDispatcher;)V

    goto :goto_1

    .line 52
    :pswitch_1
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/stage/WindowBuilder;->focused:Z

    invoke-virtual {v5, v6}, Ljavafx/stage/Window;->setFocused(Z)V

    goto :goto_1

    .line 53
    :pswitch_2
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/stage/WindowBuilder;->height:D

    invoke-virtual {v5, v6, v7}, Ljavafx/stage/Window;->setHeight(D)V

    goto :goto_1

    .line 54
    :pswitch_3
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/stage/WindowBuilder;->onCloseRequest:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/stage/Window;->setOnCloseRequest(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 55
    :pswitch_4
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/stage/WindowBuilder;->onHidden:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/stage/Window;->setOnHidden(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 56
    :pswitch_5
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/stage/WindowBuilder;->onHiding:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/stage/Window;->setOnHiding(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 57
    :pswitch_6
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/stage/WindowBuilder;->onShowing:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/stage/Window;->setOnShowing(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 58
    :pswitch_7
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/stage/WindowBuilder;->onShown:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/stage/Window;->setOnShown(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 59
    :pswitch_8
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/stage/WindowBuilder;->opacity:D

    invoke-virtual {v5, v6, v7}, Ljavafx/stage/Window;->setOpacity(D)V

    goto :goto_1

    .line 60
    :pswitch_9
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/stage/WindowBuilder;->width:D

    invoke-virtual {v5, v6, v7}, Ljavafx/stage/Window;->setWidth(D)V

    goto :goto_1

    .line 61
    :pswitch_a
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/stage/WindowBuilder;->x:D

    invoke-virtual {v5, v6, v7}, Ljavafx/stage/Window;->setX(D)V

    goto :goto_1

    .line 62
    :pswitch_b
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/stage/WindowBuilder;->y:D

    invoke-virtual {v5, v6, v7}, Ljavafx/stage/Window;->setY(D)V

    goto :goto_1

    .line 65
    .end local v4    # "i":I
    :cond_0
    return-void

    .line 50
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
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public eventDispatcher(Ljavafx/event/EventDispatcher;)Ljavafx/stage/WindowBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventDispatcher;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventDispatcher;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/WindowBuilder;->eventDispatcher:Ljavafx/event/EventDispatcher;

    .line 74
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/stage/WindowBuilder;->__set(I)V

    .line 75
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    return-object v0
.end method

.method public focused(Z)Ljavafx/stage/WindowBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/stage/WindowBuilder;->focused:Z

    .line 85
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljavafx/stage/WindowBuilder;->__set(I)V

    .line 86
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    return-object v0
.end method

.method public height(D)Ljavafx/stage/WindowBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/stage/WindowBuilder;->height:D

    .line 96
    move-object v3, v0

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljavafx/stage/WindowBuilder;->__set(I)V

    .line 97
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    return-object v0
.end method

.method public onCloseRequest(Ljavafx/event/EventHandler;)Ljavafx/stage/WindowBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/stage/WindowEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/WindowBuilder;->onCloseRequest:Ljavafx/event/EventHandler;

    .line 107
    move-object v2, v0

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljavafx/stage/WindowBuilder;->__set(I)V

    .line 108
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    return-object v0
.end method

.method public onHidden(Ljavafx/event/EventHandler;)Ljavafx/stage/WindowBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/stage/WindowEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/WindowBuilder;->onHidden:Ljavafx/event/EventHandler;

    .line 118
    move-object v2, v0

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljavafx/stage/WindowBuilder;->__set(I)V

    .line 119
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    return-object v0
.end method

.method public onHiding(Ljavafx/event/EventHandler;)Ljavafx/stage/WindowBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/stage/WindowEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/WindowBuilder;->onHiding:Ljavafx/event/EventHandler;

    .line 129
    move-object v2, v0

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljavafx/stage/WindowBuilder;->__set(I)V

    .line 130
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    return-object v0
.end method

.method public onShowing(Ljavafx/event/EventHandler;)Ljavafx/stage/WindowBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/stage/WindowEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/WindowBuilder;->onShowing:Ljavafx/event/EventHandler;

    .line 140
    move-object v2, v0

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljavafx/stage/WindowBuilder;->__set(I)V

    .line 141
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    return-object v0
.end method

.method public onShown(Ljavafx/event/EventHandler;)Ljavafx/stage/WindowBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/stage/WindowEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/WindowBuilder;->onShown:Ljavafx/event/EventHandler;

    .line 151
    move-object v2, v0

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljavafx/stage/WindowBuilder;->__set(I)V

    .line 152
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    return-object v0
.end method

.method public opacity(D)Ljavafx/stage/WindowBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/stage/WindowBuilder;->opacity:D

    .line 162
    move-object v3, v0

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Ljavafx/stage/WindowBuilder;->__set(I)V

    .line 163
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    return-object v0
.end method

.method public width(D)Ljavafx/stage/WindowBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/stage/WindowBuilder;->width:D

    .line 173
    move-object v3, v0

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Ljavafx/stage/WindowBuilder;->__set(I)V

    .line 174
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    return-object v0
.end method

.method public x(D)Ljavafx/stage/WindowBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/stage/WindowBuilder;->x:D

    .line 184
    move-object v3, v0

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljavafx/stage/WindowBuilder;->__set(I)V

    .line 185
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    return-object v0
.end method

.method public y(D)Ljavafx/stage/WindowBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/stage/WindowBuilder;->y:D

    .line 195
    move-object v3, v0

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Ljavafx/stage/WindowBuilder;->__set(I)V

    .line 196
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/stage/WindowBuilder;, "Ljavafx/stage/WindowBuilder<TB;>;"
    return-object v0
.end method
