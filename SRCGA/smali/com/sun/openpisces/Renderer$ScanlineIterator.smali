.class final Lcom/sun/openpisces/Renderer$ScanlineIterator;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/openpisces/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScanlineIterator"
.end annotation


# static fields
.field private static final INIT_CROSSINGS_SIZE:I = 0xa


# instance fields
.field private crossings:[I

.field private edgeCount:I

.field private edgePtrs:[I

.field private nextY:I

.field final synthetic this$0:Lcom/sun/openpisces/Renderer;


# direct methods
.method private constructor <init>(Lcom/sun/openpisces/Renderer;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer$ScanlineIterator;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/openpisces/Renderer$ScanlineIterator;->this$0:Lcom/sun/openpisces/Renderer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v2, v0

    const/16 v3, 0xa

    new-array v3, v3, [I

    iput-object v3, v2, Lcom/sun/openpisces/Renderer$ScanlineIterator;->crossings:[I

    .line 50
    move-object v2, v0

    const/16 v3, 0xa

    new-array v3, v3, [I

    iput-object v3, v2, Lcom/sun/openpisces/Renderer$ScanlineIterator;->edgePtrs:[I

    .line 51
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/openpisces/Renderer$ScanlineIterator;->reset()V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/openpisces/Renderer;Lcom/sun/openpisces/Renderer$1;)V
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer$ScanlineIterator;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/openpisces/Renderer;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/openpisces/Renderer$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/openpisces/Renderer$ScanlineIterator;-><init>(Lcom/sun/openpisces/Renderer;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sun/openpisces/Renderer$ScanlineIterator;)Z
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "x0":Lcom/sun/openpisces/Renderer$ScanlineIterator;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/openpisces/Renderer$ScanlineIterator;->hasNext()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/openpisces/Renderer$ScanlineIterator;
    return v0
.end method

.method static synthetic access$700(Lcom/sun/openpisces/Renderer$ScanlineIterator;)I
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "x0":Lcom/sun/openpisces/Renderer$ScanlineIterator;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/openpisces/Renderer$ScanlineIterator;->next()I

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/openpisces/Renderer$ScanlineIterator;
    return v0
.end method

.method static synthetic access$800(Lcom/sun/openpisces/Renderer$ScanlineIterator;)[I
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "x0":Lcom/sun/openpisces/Renderer$ScanlineIterator;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/openpisces/Renderer$ScanlineIterator;->crossings:[I

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/openpisces/Renderer$ScanlineIterator;
    return-object v0
.end method

.method static synthetic access$900(Lcom/sun/openpisces/Renderer$ScanlineIterator;)I
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "x0":Lcom/sun/openpisces/Renderer$ScanlineIterator;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/openpisces/Renderer$ScanlineIterator;->curY()I

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/openpisces/Renderer$ScanlineIterator;
    return v0
.end method

.method private curY()I
    .locals 3

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer$ScanlineIterator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Renderer$ScanlineIterator;->nextY:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/openpisces/Renderer$ScanlineIterator;
    return v0
.end method

.method private hasNext()Z
    .locals 3

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer$ScanlineIterator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/openpisces/Renderer$ScanlineIterator;->nextY:I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/openpisces/Renderer$ScanlineIterator;->this$0:Lcom/sun/openpisces/Renderer;

    invoke-static {v2}, Lcom/sun/openpisces/Renderer;->access$400(Lcom/sun/openpisces/Renderer;)I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/openpisces/Renderer$ScanlineIterator;
    return v0

    .restart local v0    # "this":Lcom/sun/openpisces/Renderer$ScanlineIterator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private next()I
    .locals 24

    .prologue
    .line 65
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/openpisces/Renderer$ScanlineIterator;
    move-object/from16 v16, v2

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/openpisces/Renderer$ScanlineIterator;->nextY:I

    move/from16 v17, v0

    move-object/from16 v22, v16

    move/from16 v23, v17

    move/from16 v16, v23

    move-object/from16 v17, v22

    move/from16 v18, v23

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/openpisces/Renderer$ScanlineIterator;->nextY:I

    move/from16 v3, v16

    .line 66
    .local v3, "cury":I
    move/from16 v16, v3

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/openpisces/Renderer$ScanlineIterator;->this$0:Lcom/sun/openpisces/Renderer;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sun/openpisces/Renderer;->access$100(Lcom/sun/openpisces/Renderer;)I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v4, v16

    .line 67
    .local v4, "bucket":I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/openpisces/Renderer$ScanlineIterator;->edgeCount:I

    move/from16 v16, v0

    move/from16 v5, v16

    .line 68
    .local v5, "count":I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/openpisces/Renderer$ScanlineIterator;->edgePtrs:[I

    move-object/from16 v16, v0

    move-object/from16 v6, v16

    .line 69
    .local v6, "ptrs":[I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/openpisces/Renderer$ScanlineIterator;->this$0:Lcom/sun/openpisces/Renderer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/openpisces/Renderer;->access$200(Lcom/sun/openpisces/Renderer;)[F

    move-result-object v16

    move-object/from16 v7, v16

    .line 70
    .local v7, "edges":[F
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/openpisces/Renderer$ScanlineIterator;->this$0:Lcom/sun/openpisces/Renderer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/openpisces/Renderer;->access$300(Lcom/sun/openpisces/Renderer;)[I

    move-result-object v16

    move/from16 v17, v4

    const/16 v18, 0x2

    mul-int/lit8 v17, v17, 0x2

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    aget v16, v16, v17

    move/from16 v8, v16

    .line 71
    .local v8, "bucketcount":I
    move/from16 v16, v8

    const/16 v17, 0x1

    and-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_2

    .line 72
    const/16 v16, 0x0

    move/from16 v9, v16

    .line 73
    .local v9, "newCount":I
    const/16 v16, 0x0

    move/from16 v10, v16

    .local v10, "i":I
    :goto_0
    move/from16 v16, v10

    move/from16 v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 74
    move-object/from16 v16, v6

    move/from16 v17, v10

    aget v16, v16, v17

    move/from16 v11, v16

    .line 75
    .local v11, "ecur":I
    move-object/from16 v16, v7

    move/from16 v17, v11

    const/16 v18, 0x0

    add-int/lit8 v17, v17, 0x0

    aget v16, v16, v17

    move/from16 v17, v3

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v16, v16, v17

    if-lez v16, :cond_0

    .line 76
    move-object/from16 v16, v6

    move/from16 v17, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v18, v11

    aput v18, v16, v17

    .line 73
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 79
    .end local v11    # "ecur":I
    :cond_1
    move/from16 v16, v9

    move/from16 v5, v16

    .line 81
    .end local v9    # "newCount":I
    .end local v10    # "i":I
    :cond_2
    move-object/from16 v16, v6

    move/from16 v17, v5

    move/from16 v18, v8

    const/16 v19, 0x1

    shr-int/lit8 v18, v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/sun/openpisces/Helpers;->widenArray([III)[I

    move-result-object v16

    move-object/from16 v6, v16

    .line 82
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/openpisces/Renderer$ScanlineIterator;->this$0:Lcom/sun/openpisces/Renderer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/openpisces/Renderer;->access$300(Lcom/sun/openpisces/Renderer;)[I

    move-result-object v16

    move/from16 v17, v4

    const/16 v18, 0x2

    mul-int/lit8 v17, v17, 0x2

    aget v16, v16, v17

    move/from16 v9, v16

    .line 83
    .local v9, "ecur":I
    :goto_1
    move/from16 v16, v9

    if-eqz v16, :cond_3

    .line 86
    move-object/from16 v16, v6

    move/from16 v17, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v9, v9, -0x1

    move/from16 v18, v9

    aput v18, v16, v17

    .line 84
    move-object/from16 v16, v7

    move/from16 v17, v9

    const/16 v18, 0x4

    add-int/lit8 v17, v17, 0x4

    aget v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v9, v16

    goto :goto_1

    .line 89
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v17, v6

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/openpisces/Renderer$ScanlineIterator;->edgePtrs:[I

    .line 90
    move-object/from16 v16, v2

    move/from16 v17, v5

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/sun/openpisces/Renderer$ScanlineIterator;->edgeCount:I

    .line 94
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/openpisces/Renderer$ScanlineIterator;->crossings:[I

    move-object/from16 v16, v0

    move-object/from16 v9, v16

    .line 95
    .local v9, "xings":[I
    move-object/from16 v16, v9

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 96
    move-object/from16 v16, v2

    move-object/from16 v17, v6

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v9, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/openpisces/Renderer$ScanlineIterator;->crossings:[I

    .line 98
    :cond_4
    const/16 v16, 0x0

    move/from16 v10, v16

    .restart local v10    # "i":I
    :goto_2
    move/from16 v16, v10

    move/from16 v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 99
    move-object/from16 v16, v6

    move/from16 v17, v10

    aget v16, v16, v17

    move/from16 v11, v16

    .line 100
    .restart local v11    # "ecur":I
    move-object/from16 v16, v7

    move/from16 v17, v11

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    aget v16, v16, v17

    move/from16 v12, v16

    .line 101
    .local v12, "curx":F
    move/from16 v16, v12

    const/high16 v17, 0x3f000000    # 0.5f

    sub-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    shl-int/lit8 v16, v16, 0x1

    move/from16 v13, v16

    .line 102
    .local v13, "cross":I
    move-object/from16 v16, v7

    move/from16 v17, v11

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v12

    move-object/from16 v19, v7

    move/from16 v20, v11

    const/16 v21, 0x3

    add-int/lit8 v20, v20, 0x3

    aget v19, v19, v20

    add-float v18, v18, v19

    aput v18, v16, v17

    .line 103
    move-object/from16 v16, v7

    move/from16 v17, v11

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    aget v16, v16, v17

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-lez v16, :cond_5

    .line 104
    move/from16 v16, v13

    const/16 v17, 0x1

    or-int/lit8 v16, v16, 0x1

    move/from16 v13, v16

    .line 106
    :cond_5
    move/from16 v16, v10

    move/from16 v14, v16

    .line 107
    .local v14, "j":I
    :goto_3
    add-int/lit8 v14, v14, -0x1

    move/from16 v16, v14

    if-ltz v16, :cond_6

    .line 108
    move-object/from16 v16, v9

    move/from16 v17, v14

    aget v16, v16, v17

    move/from16 v15, v16

    .line 109
    .local v15, "jcross":I
    move/from16 v16, v15

    move/from16 v17, v13

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_7

    .line 110
    .line 115
    .end local v15    # "jcross":I
    :cond_6
    move-object/from16 v16, v9

    move/from16 v17, v14

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v13

    aput v18, v16, v17

    .line 116
    move-object/from16 v16, v6

    move/from16 v17, v14

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v11

    aput v18, v16, v17

    .line 98
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 112
    .restart local v15    # "jcross":I
    :cond_7
    move-object/from16 v16, v9

    move/from16 v17, v14

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v15

    aput v18, v16, v17

    .line 113
    move-object/from16 v16, v6

    move/from16 v17, v14

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v18, v6

    move/from16 v19, v14

    aget v18, v18, v19

    aput v18, v16, v17

    .line 114
    goto :goto_3

    .line 118
    .end local v11    # "ecur":I
    .end local v12    # "curx":F
    .end local v13    # "cross":I
    .end local v14    # "j":I
    .end local v15    # "jcross":I
    :cond_8
    move/from16 v16, v5

    move/from16 v2, v16

    .end local v2    # "this":Lcom/sun/openpisces/Renderer$ScanlineIterator;
    return v2
.end method


# virtual methods
.method public reset()V
    .locals 3

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Renderer$ScanlineIterator;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/openpisces/Renderer$ScanlineIterator;->this$0:Lcom/sun/openpisces/Renderer;

    invoke-static {v2}, Lcom/sun/openpisces/Renderer;->access$000(Lcom/sun/openpisces/Renderer;)I

    move-result v2

    iput v2, v1, Lcom/sun/openpisces/Renderer$ScanlineIterator;->nextY:I

    .line 59
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/openpisces/Renderer$ScanlineIterator;->edgeCount:I

    .line 60
    return-void
.end method
