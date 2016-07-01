.class Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;
.super Ljava/lang/Object;
.source "TouchInputSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/TouchInputSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchCoord"
.end annotation


# instance fields
.field private final x:I

.field private final xAbs:I

.field private final y:I

.field private final yAbs:I


# direct methods
.method private constructor <init>(IIII)V
    .locals 7

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "xAbs":I
    move v4, p4

    .local v4, "yAbs":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->x:I

    .line 42
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->y:I

    .line 43
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->xAbs:I

    .line 44
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->yAbs:I

    .line 45
    return-void
.end method

.method synthetic constructor <init>(IIIILcom/sun/glass/ui/TouchInputSupport$1;)V
    .locals 11

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;
    move v1, p1

    .local v1, "x0":I
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move v4, p4

    .local v4, "x3":I
    move-object/from16 v5, p5

    .local v5, "x4":Lcom/sun/glass/ui/TouchInputSupport$1;
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;-><init>(IIII)V

    return-void
.end method

.method static synthetic access$000(Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;)I
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->x:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;
    return v0
.end method

.method static synthetic access$100(Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;)I
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->y:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;
    return v0
.end method

.method static synthetic access$200(Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;)I
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->xAbs:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;
    return v0
.end method

.method static synthetic access$300(Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;)I
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;->yAbs:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/TouchInputSupport$TouchCoord;
    return v0
.end method
