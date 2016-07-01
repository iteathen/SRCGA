.class Lcom/sun/glass/ui/monocle/MouseState;
.super Ljava/lang/Object;
.source "MouseState.java"


# static fields
.field static final WHEEL_DOWN:I = -0x1

.field static final WHEEL_NONE:I = 0x0

.field static final WHEEL_UP:I = 0x1


# instance fields
.field private buttonsPressed:Lcom/sun/glass/ui/monocle/IntSet;

.field private wheel:I

.field private window:Lcom/sun/glass/ui/monocle/MonocleWindow;

.field private x:I

.field private y:I


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseState;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/monocle/IntSet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/IntSet;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/MouseState;->buttonsPressed:Lcom/sun/glass/ui/monocle/IntSet;

    return-void
.end method


# virtual methods
.method canBeFoldedWith(Lcom/sun/glass/ui/monocle/MouseState;)Z
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseState;
    move-object v1, p1

    .local v1, "ms":Lcom/sun/glass/ui/monocle/MouseState;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/MouseState;->buttonsPressed:Lcom/sun/glass/ui/monocle/IntSet;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MouseState;->buttonsPressed:Lcom/sun/glass/ui/monocle/IntSet;

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/IntSet;->equals(Lcom/sun/glass/ui/monocle/IntSet;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    iget v2, v2, Lcom/sun/glass/ui/monocle/MouseState;->wheel:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/MouseState;->wheel:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MouseState;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/MouseState;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method copyTo(Lcom/sun/glass/ui/monocle/MouseState;)V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseState;
    move-object v1, p1

    .local v1, "target":Lcom/sun/glass/ui/monocle/MouseState;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/MouseState;->x:I

    iput v3, v2, Lcom/sun/glass/ui/monocle/MouseState;->x:I

    .line 129
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/MouseState;->y:I

    iput v3, v2, Lcom/sun/glass/ui/monocle/MouseState;->y:I

    .line 130
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/MouseState;->wheel:I

    iput v3, v2, Lcom/sun/glass/ui/monocle/MouseState;->wheel:I

    .line 131
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/MouseState;->buttonsPressed:Lcom/sun/glass/ui/monocle/IntSet;

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MouseState;->buttonsPressed:Lcom/sun/glass/ui/monocle/IntSet;

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/IntSet;->copyTo(Lcom/sun/glass/ui/monocle/IntSet;)V

    .line 132
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MouseState;->window:Lcom/sun/glass/ui/monocle/MonocleWindow;

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/MouseState;->window:Lcom/sun/glass/ui/monocle/MonocleWindow;

    .line 133
    return-void
.end method

.method getButton()I
    .locals 3

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MouseState;->buttonsPressed:Lcom/sun/glass/ui/monocle/IntSet;

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/IntSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd3

    .line 101
    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MouseState;
    return v0

    .line 99
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/MouseState;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MouseState;->buttonsPressed:Lcom/sun/glass/ui/monocle/IntSet;

    const/4 v2, 0x0

    .line 101
    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/monocle/IntSet;->get(I)I

    move-result v1

    goto :goto_0
.end method

.method getButtonsPressed()Lcom/sun/glass/ui/monocle/IntSet;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MouseState;->buttonsPressed:Lcom/sun/glass/ui/monocle/IntSet;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MouseState;
    return-object v0
.end method

.method getModifiers()I
    .locals 5

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseState;
    const/4 v3, 0x0

    move v1, v3

    .line 107
    .local v1, "modifiers":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MouseState;->buttonsPressed:Lcom/sun/glass/ui/monocle/IntSet;

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/IntSet;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 108
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MouseState;->buttonsPressed:Lcom/sun/glass/ui/monocle/IntSet;

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/IntSet;->get(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 107
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :pswitch_0
    move v3, v1

    const/16 v4, 0x20

    or-int/lit8 v3, v3, 0x20

    move v1, v3

    .line 111
    goto :goto_1

    .line 113
    :pswitch_1
    move v3, v1

    const/16 v4, 0x80

    or-int/lit16 v3, v3, 0x80

    move v1, v3

    .line 114
    goto :goto_1

    .line 116
    :pswitch_2
    move v3, v1

    const/16 v4, 0x40

    or-int/lit8 v3, v3, 0x40

    move v1, v3

    goto :goto_1

    .line 120
    :cond_0
    move v3, v1

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MouseState;
    return v0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0xd4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method getWheel()I
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/MouseState;->wheel:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MouseState;
    return v0
.end method

.method getWindow(Z)Lcom/sun/glass/ui/monocle/MonocleWindow;
    .locals 6

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseState;
    move v1, p1

    .local v1, "recalculateCache":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/MouseState;->window:Lcom/sun/glass/ui/monocle/MonocleWindow;

    if-eqz v2, :cond_0

    move v2, v1

    if-eqz v2, :cond_1

    .line 91
    :cond_0
    move-object v2, v0

    .line 92
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/MouseState;->x:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/MouseState;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getWindowForLocation(II)Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/MouseState;->window:Lcom/sun/glass/ui/monocle/MonocleWindow;

    .line 94
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/MouseState;->window:Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MouseState;
    return-object v0
.end method

.method getX()I
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/MouseState;->x:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MouseState;
    return v0
.end method

.method getY()I
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/MouseState;->y:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MouseState;
    return v0
.end method

.method pressButton(I)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseState;
    move v1, p1

    .local v1, "button":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/MouseState;->buttonsPressed:Lcom/sun/glass/ui/monocle/IntSet;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/IntSet;->addInt(I)V

    .line 75
    return-void
.end method

.method releaseButton(I)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseState;
    move v1, p1

    .local v1, "button":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/MouseState;->buttonsPressed:Lcom/sun/glass/ui/monocle/IntSet;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/IntSet;->removeInt(I)V

    .line 79
    return-void
.end method

.method setWheel(I)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseState;
    move v1, p1

    .local v1, "wheel":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/glass/ui/monocle/MouseState;->wheel:I

    .line 71
    return-void
.end method

.method setX(I)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseState;
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/glass/ui/monocle/MouseState;->x:I

    .line 55
    return-void
.end method

.method setY(I)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseState;
    move v1, p1

    .local v1, "y":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/glass/ui/monocle/MouseState;->y:I

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseState;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MouseState[x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/MouseState;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/MouseState;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",wheel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/MouseState;->wheel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",buttonsPressed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/MouseState;->buttonsPressed:Lcom/sun/glass/ui/monocle/IntSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MouseState;
    return-object v0
.end method
