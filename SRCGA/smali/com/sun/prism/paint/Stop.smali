.class public Lcom/sun/prism/paint/Stop;
.super Ljava/lang/Object;
.source "Stop.java"


# instance fields
.field private final color:Lcom/sun/prism/paint/Color;

.field private final offset:F


# direct methods
.method public constructor <init>(Lcom/sun/prism/paint/Color;F)V
    .locals 5

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Stop;
    move-object v1, p1

    .local v1, "color":Lcom/sun/prism/paint/Color;
    move v2, p2

    .local v2, "offset":F
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/prism/paint/Stop;->color:Lcom/sun/prism/paint/Color;

    .line 35
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/prism/paint/Stop;->offset:F

    .line 36
    return-void
.end method


# virtual methods
.method public getColor()Lcom/sun/prism/paint/Color;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Stop;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/paint/Stop;->color:Lcom/sun/prism/paint/Color;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Stop;
    return-object v0
.end method

.method public getOffset()F
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Stop;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/Stop;->offset:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Stop;
    return v0
.end method
