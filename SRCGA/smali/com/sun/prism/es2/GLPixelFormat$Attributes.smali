.class Lcom/sun/prism/es2/GLPixelFormat$Attributes;
.super Ljava/lang/Object;
.source "GLPixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/es2/GLPixelFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Attributes"
.end annotation


# static fields
.field static final ALPHA_SIZE:I = 0x3

.field static final BLUE_SIZE:I = 0x2

.field static final DEPTH_SIZE:I = 0x4

.field static final DOUBLEBUFFER:I = 0x5

.field static final GREEN_SIZE:I = 0x1

.field static final NUM_ITEMS:I = 0x7

.field static final ONSCREEN:I = 0x6

.field static final RED_SIZE:I


# instance fields
.field private alphaSize:I

.field private blueSize:I

.field private depthSize:I

.field private doubleBuffer:Z

.field private greenSize:I

.field private onScreen:Z

.field private redSize:I


# direct methods
.method constructor <init>()V
    .locals 9

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 92
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->onScreen:Z

    .line 93
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->doubleBuffer:Z

    .line 94
    move-object v1, v0

    # getter for: Lcom/sun/prism/es2/GLPixelFormat;->defaultDepthSize:I
    invoke-static {}, Lcom/sun/prism/es2/GLPixelFormat;->access$000()I

    move-result v2

    iput v2, v1, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->depthSize:I

    .line 95
    # getter for: Lcom/sun/prism/es2/GLPixelFormat;->defaultBufferSize:I
    invoke-static {}, Lcom/sun/prism/es2/GLPixelFormat;->access$100()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 109
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "color buffer size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 110
    # getter for: Lcom/sun/prism/es2/GLPixelFormat;->defaultBufferSize:I
    invoke-static {}, Lcom/sun/prism/es2/GLPixelFormat;->access$100()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :sswitch_0
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    const/16 v5, 0x8

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->alphaSize:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    iput v5, v4, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->blueSize:I

    move-object v7, v2

    move v8, v3

    move v2, v8

    move-object v3, v7

    move v4, v8

    iput v4, v3, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->greenSize:I

    iput v2, v1, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->redSize:I

    .line 98
    .line 112
    :goto_0
    return-void

    .line 100
    :sswitch_1
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    const/16 v4, 0x8

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    iput v5, v4, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->blueSize:I

    move-object v7, v2

    move v8, v3

    move v2, v8

    move-object v3, v7

    move v4, v8

    iput v4, v3, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->greenSize:I

    iput v2, v1, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->redSize:I

    .line 101
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->alphaSize:I

    .line 102
    goto :goto_0

    .line 104
    :sswitch_2
    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x5

    move-object v7, v2

    move v8, v3

    move v2, v8

    move-object v3, v7

    move v4, v8

    iput v4, v3, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->blueSize:I

    iput v2, v1, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->redSize:I

    .line 105
    move-object v1, v0

    const/4 v2, 0x6

    iput v2, v1, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->greenSize:I

    .line 106
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->alphaSize:I

    .line 107
    goto :goto_0

    .line 95
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x18 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method getAlphaSize()I
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->alphaSize:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    return v0
.end method

.method getBlueSize()I
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->blueSize:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    return v0
.end method

.method getDepthSize()I
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->depthSize:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    return v0
.end method

.method getGreenSize()I
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->greenSize:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    return v0
.end method

.method getRedSize()I
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->redSize:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    return v0
.end method

.method isDoubleBuffer()Z
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->doubleBuffer:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    return v0
.end method

.method isOnScreen()Z
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->onScreen:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    return v0
.end method

.method setAlphaSize(I)V
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    move v1, p1

    .local v1, "as":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->alphaSize:I

    .line 156
    return-void
.end method

.method setBlueSize(I)V
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    move v1, p1

    .local v1, "bs":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->blueSize:I

    .line 160
    return-void
.end method

.method setDepthSize(I)V
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    move v1, p1

    .local v1, "ds":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->depthSize:I

    .line 152
    return-void
.end method

.method setDoubleBuffer(Z)V
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    move v1, p1

    .local v1, "db":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->doubleBuffer:Z

    .line 148
    return-void
.end method

.method setGreenSize(I)V
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    move v1, p1

    .local v1, "gs":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->greenSize:I

    .line 164
    return-void
.end method

.method setOnScreen(Z)V
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    move v1, p1

    .local v1, "os":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->onScreen:Z

    .line 144
    return-void
.end method

.method setRedSize(I)V
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    move v1, p1

    .local v1, "rs":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->redSize:I

    .line 168
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->onScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "redSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->redSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "greenSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->greenSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "blueSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->blueSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "alphaSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->alphaSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "depthSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->depthSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "doubleBuffer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->doubleBuffer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    return-object v0
.end method
