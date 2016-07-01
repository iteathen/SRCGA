.class final Lcom/sun/glass/ui/monocle/MonocleWindowManager;
.super Ljava/lang/Object;
.source "MonocleWindowManager.java"


# static fields
.field private static instance:Lcom/sun/glass/ui/monocle/MonocleWindowManager;


# instance fields
.field private focusedWindow:Lcom/sun/glass/ui/monocle/MonocleWindow;

.field private nextID:I

.field private windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->instance:Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v1, v0

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/sun/glass/ui/monocle/MonocleWindow;

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    .line 44
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->nextID:I

    .line 46
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->focusedWindow:Lcom/sun/glass/ui/monocle/MonocleWindow;

    .line 50
    return-void
.end method

.method static synthetic access$000()Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->instance:Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    return-object v0
.end method

.method static getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->instance:Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    return-object v0
.end method

.method private getWindowIndex(Lcom/sun/glass/ui/monocle/MonocleWindow;)I
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    move-object v1, p1

    .local v1, "window":Lcom/sun/glass/ui/monocle/MonocleWindow;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 60
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 61
    move v3, v2

    move v0, v3

    .line 64
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    :goto_1
    return v0

    .line 57
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_1
    const/4 v3, -0x1

    move v0, v3

    goto :goto_1
.end method

.method static repaintFromNative()V
    .locals 3

    .prologue
    .line 174
    new-instance v0, Lcom/sun/glass/ui/monocle/MonocleWindowManager$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/MonocleWindowManager$1;-><init>()V

    invoke-static {v0}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method


# virtual methods
.method addWindow(Lcom/sun/glass/ui/monocle/MonocleWindow;)I
    .locals 9

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    move-object v1, p1

    .local v1, "window":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getWindowIndex(Lcom/sun/glass/ui/monocle/MonocleWindow;)I

    move-result v3

    move v2, v3

    .line 85
    .local v2, "index":I
    move v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 86
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sun/glass/ui/monocle/MonocleWindow;

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    .line 87
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    array-length v4, v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v5, v1

    aput-object v5, v3, v4

    .line 89
    :cond_0
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->nextID:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->nextID:I

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    return v0
.end method

.method closeWindow(Lcom/sun/glass/ui/monocle/MonocleWindow;)Z
    .locals 15

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    move-object/from16 v1, p1

    .local v1, "window":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getWindowIndex(Lcom/sun/glass/ui/monocle/MonocleWindow;)I

    move-result v8

    move v2, v8

    .line 95
    .local v2, "index":I
    move v8, v2

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 96
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    move v11, v2

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    array-length v12, v12

    move v13, v2

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/sun/glass/ui/monocle/MonocleWindow;

    iput-object v9, v8, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    .line 100
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v8

    .line 101
    .local v3, "windowsToNotify":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/monocle/MonocleWindow;>;"
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-object v4, v8

    move-object v8, v4

    array-length v8, v8

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_2

    move-object v8, v4

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 102
    .local v7, "otherWindow":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object v8, v7

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getOwner()Lcom/sun/glass/ui/Window;

    move-result-object v8

    move-object v9, v1

    if-ne v8, v9, :cond_1

    .line 103
    move-object v8, v3

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 101
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 106
    .end local v7    # "otherWindow":Lcom/sun/glass/ui/monocle/MonocleWindow;
    :cond_2
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_1
    move v8, v4

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 107
    move-object v8, v3

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/glass/ui/monocle/MonocleWindow;

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/MonocleWindow;->notifyClose()V

    .line 106
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 109
    :cond_3
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/MonocleWindow;->notifyDestroy()V

    .line 110
    const/4 v8, 0x1

    move v0, v8

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    return v0
.end method

.method getFocusedWindow()Lcom/sun/glass/ui/monocle/MonocleWindow;
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->focusedWindow:Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    return-object v0
.end method

.method getWindowForLocation(II)Lcom/sun/glass/ui/monocle/MonocleWindow;
    .locals 8

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    if-ltz v5, :cond_1

    .line 143
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 144
    .local v4, "w":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getX()I

    move-result v6

    if-lt v5, v6, :cond_0

    move v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getY()I

    move-result v6

    if-lt v5, v6, :cond_0

    move v5, v1

    move-object v6, v4

    .line 145
    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getX()I

    move-result v6

    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_0

    move v5, v2

    move-object v6, v4

    .line 146
    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getY()I

    move-result v6

    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_0

    move-object v5, v4

    .line 147
    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/MonocleWindow;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    move-object v5, v4

    move-object v0, v5

    .line 151
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    .end local v4    # "w":Lcom/sun/glass/ui/monocle/MonocleWindow;
    :goto_1
    return-object v0

    .line 142
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    .restart local v4    # "w":Lcom/sun/glass/ui/monocle/MonocleWindow;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 151
    .end local v4    # "w":Lcom/sun/glass/ui/monocle/MonocleWindow;
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method grabFocus(Lcom/sun/glass/ui/monocle/MonocleWindow;)Z
    .locals 3

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    move-object v1, p1

    .local v1, "window":Lcom/sun/glass/ui/monocle/MonocleWindow;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    return v0
.end method

.method maximizeWindow(Lcom/sun/glass/ui/monocle/MonocleWindow;)Z
    .locals 3

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    move-object v1, p1

    .local v1, "window":Lcom/sun/glass/ui/monocle/MonocleWindow;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    return v0
.end method

.method minimizeWindow(Lcom/sun/glass/ui/monocle/MonocleWindow;)Z
    .locals 3

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    move-object v1, p1

    .local v1, "window":Lcom/sun/glass/ui/monocle/MonocleWindow;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    return v0
.end method

.method notifyFocusDisabled(Lcom/sun/glass/ui/monocle/MonocleWindow;)V
    .locals 3

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    move-object v1, p1

    .local v1, "window":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 156
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/MonocleWindow;->_notifyFocusDisabled()V

    .line 158
    :cond_0
    return-void
.end method

.method repaintAll()V
    .locals 5

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 166
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    move v4, v1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getView()Lcom/sun/glass/ui/View;

    move-result-object v3

    check-cast v3, Lcom/sun/glass/ui/monocle/MonocleView;

    move-object v2, v3

    .line 167
    .local v2, "view":Lcom/sun/glass/ui/monocle/MonocleView;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 168
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/MonocleView;->notifyRepaint()V

    .line 165
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v2    # "view":Lcom/sun/glass/ui/monocle/MonocleView;
    :cond_1
    return-void
.end method

.method requestFocus(Lcom/sun/glass/ui/monocle/MonocleWindow;)Z
    .locals 5

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    move-object v1, p1

    .local v1, "window":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getWindowIndex(Lcom/sun/glass/ui/monocle/MonocleWindow;)I

    move-result v3

    move v2, v3

    .line 124
    .local v2, "index":I
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 125
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->focusedWindow:Lcom/sun/glass/ui/monocle/MonocleWindow;

    .line 126
    move-object v3, v1

    const/16 v4, 0x21e

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/MonocleWindow;->notifyFocus(I)V

    .line 127
    const/4 v3, 0x1

    move v0, v3

    .line 129
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method toBack(Lcom/sun/glass/ui/monocle/MonocleWindow;)V
    .locals 8

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    move-object v1, p1

    .local v1, "window":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getWindowIndex(Lcom/sun/glass/ui/monocle/MonocleWindow;)I

    move-result v3

    move v2, v3

    .line 68
    .local v2, "index":I
    move v3, v2

    if-eqz v3, :cond_0

    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 69
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    const/4 v6, 0x1

    move v7, v2

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    const/4 v4, 0x0

    move-object v5, v1

    aput-object v5, v3, v4

    .line 72
    :cond_0
    return-void
.end method

.method toFront(Lcom/sun/glass/ui/monocle/MonocleWindow;)V
    .locals 9

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    move-object v1, p1

    .local v1, "window":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getWindowIndex(Lcom/sun/glass/ui/monocle/MonocleWindow;)I

    move-result v3

    move v2, v3

    .line 76
    .local v2, "index":I
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    array-length v4, v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_0

    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 77
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    array-length v7, v7

    move v8, v2

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->windows:[Lcom/sun/glass/ui/monocle/MonocleWindow;

    array-length v4, v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v5, v1

    aput-object v5, v3, v4

    .line 81
    :cond_0
    return-void
.end method

.method ungrabFocus(Lcom/sun/glass/ui/monocle/MonocleWindow;)V
    .locals 0
    .param p1, "window"    # Lcom/sun/glass/ui/monocle/MonocleWindow;

    .prologue
    .line 139
    return-void
.end method
