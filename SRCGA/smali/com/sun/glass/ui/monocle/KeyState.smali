.class Lcom/sun/glass/ui/monocle/KeyState;
.super Ljava/lang/Object;
.source "KeyState.java"


# instance fields
.field private keysPressed:Lcom/sun/glass/ui/monocle/IntSet;

.field private modifiers:I

.field private window:Lcom/sun/glass/ui/monocle/MonocleWindow;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/KeyState;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/monocle/IntSet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/IntSet;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/KeyState;->keysPressed:Lcom/sun/glass/ui/monocle/IntSet;

    return-void
.end method

.method private static getModifier(I)I
    .locals 2

    .prologue
    .line 87
    move v0, p0

    .local v0, "virtualKeyCode":I
    move v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 93
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "virtualKeyCode":I
    :goto_0
    return v0

    .line 88
    .restart local v0    # "virtualKeyCode":I
    :sswitch_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 89
    :sswitch_1
    const/4 v1, 0x4

    move v0, v1

    goto :goto_0

    .line 90
    :sswitch_2
    const/16 v1, 0x8

    move v0, v1

    goto :goto_0

    .line 91
    :sswitch_3
    const/16 v1, 0x10

    move v0, v1

    goto :goto_0

    .line 92
    :sswitch_4
    const/16 v1, 0x10

    move v0, v1

    goto :goto_0

    .line 87
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x12 -> :sswitch_2
        0x20c -> :sswitch_4
        0x300 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/KeyState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/KeyState;->keysPressed:Lcom/sun/glass/ui/monocle/IntSet;

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/IntSet;->clear()V

    .line 44
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/glass/ui/monocle/KeyState;->modifiers:I

    .line 45
    return-void
.end method

.method copyTo(Lcom/sun/glass/ui/monocle/KeyState;)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/KeyState;
    move-object v1, p1

    .local v1, "target":Lcom/sun/glass/ui/monocle/KeyState;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/KeyState;->keysPressed:Lcom/sun/glass/ui/monocle/IntSet;

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/KeyState;->keysPressed:Lcom/sun/glass/ui/monocle/IntSet;

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/IntSet;->copyTo(Lcom/sun/glass/ui/monocle/IntSet;)V

    .line 65
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/KeyState;->window:Lcom/sun/glass/ui/monocle/MonocleWindow;

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/KeyState;->window:Lcom/sun/glass/ui/monocle/MonocleWindow;

    .line 66
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/KeyState;->modifiers:I

    iput v3, v2, Lcom/sun/glass/ui/monocle/KeyState;->modifiers:I

    .line 67
    return-void
.end method

.method getKeysPressed()Lcom/sun/glass/ui/monocle/IntSet;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/KeyState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/KeyState;->keysPressed:Lcom/sun/glass/ui/monocle/IntSet;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/KeyState;
    return-object v0
.end method

.method getModifiers()I
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/KeyState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/KeyState;->modifiers:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/KeyState;
    return v0
.end method

.method getWindow(Z)Lcom/sun/glass/ui/monocle/MonocleWindow;
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/KeyState;
    move v1, p1

    .local v1, "recalculateCache":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/KeyState;->window:Lcom/sun/glass/ui/monocle/MonocleWindow;

    if-eqz v2, :cond_0

    move v2, v1

    if-eqz v2, :cond_1

    .line 80
    :cond_0
    move-object v2, v0

    .line 81
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getFocusedWindow()Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/KeyState;->window:Lcom/sun/glass/ui/monocle/MonocleWindow;

    .line 83
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/KeyState;->window:Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/KeyState;
    return-object v0
.end method

.method isControlPressed()Z
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/KeyState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/KeyState;->modifiers:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/KeyState;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/KeyState;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isShiftPressed()Z
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/KeyState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/KeyState;->modifiers:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/KeyState;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/KeyState;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method pressKey(I)V
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/KeyState;
    move v1, p1

    .local v1, "virtualKeyCode":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/KeyState;->keysPressed:Lcom/sun/glass/ui/monocle/IntSet;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/IntSet;->addInt(I)V

    .line 50
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/glass/ui/monocle/KeyState;->modifiers:I

    move v4, v1

    invoke-static {v4}, Lcom/sun/glass/ui/monocle/KeyState;->getModifier(I)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v2, Lcom/sun/glass/ui/monocle/KeyState;->modifiers:I

    .line 51
    return-void
.end method

.method releaseKey(I)V
    .locals 7

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/KeyState;
    move v1, p1

    .local v1, "virtualKeyCode":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/KeyState;->keysPressed:Lcom/sun/glass/ui/monocle/IntSet;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/IntSet;->removeInt(I)V

    .line 56
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/glass/ui/monocle/KeyState;->modifiers:I

    move v4, v1

    invoke-static {v4}, Lcom/sun/glass/ui/monocle/KeyState;->getModifier(I)I

    move-result v4

    const/4 v5, -0x1

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Lcom/sun/glass/ui/monocle/KeyState;->modifiers:I

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/KeyState;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyState[modifiers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/KeyState;->modifiers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",keys="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/KeyState;->keysPressed:Lcom/sun/glass/ui/monocle/IntSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/KeyState;
    return-object v0
.end method
