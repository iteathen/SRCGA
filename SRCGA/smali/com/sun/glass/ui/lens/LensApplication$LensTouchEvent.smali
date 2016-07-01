.class Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;
.super Lcom/sun/glass/ui/lens/LensApplication$Event;
.source "LensApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/lens/LensApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LensTouchEvent"
.end annotation


# instance fields
.field private absX:I

.field private absY:I

.field private id:J

.field private state:I

.field private view:Lcom/sun/glass/ui/lens/LensView;

.field private x:I

.field private y:I


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/lens/LensView;IJIIII)V
    .locals 13

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;
    move-object v1, p1

    .local v1, "view":Lcom/sun/glass/ui/lens/LensView;
    move v2, p2

    .local v2, "state":I
    move-wide/from16 v3, p3

    .local v3, "id":J
    move/from16 v5, p5

    .local v5, "x":I
    move/from16 v6, p6

    .local v6, "y":I
    move/from16 v7, p7

    .local v7, "absX":I
    move/from16 v8, p8

    .local v8, "absY":I
    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/sun/glass/ui/lens/LensApplication$Event;-><init>(Lcom/sun/glass/ui/lens/LensApplication$1;)V

    .line 480
    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->view:Lcom/sun/glass/ui/lens/LensView;

    .line 481
    move-object v9, v0

    move v10, v2

    iput v10, v9, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->state:I

    .line 482
    move-object v9, v0

    move-wide v10, v3

    iput-wide v10, v9, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->id:J

    .line 483
    move-object v9, v0

    move v10, v5

    iput v10, v9, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->x:I

    .line 484
    move-object v9, v0

    move v10, v6

    iput v10, v9, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->y:I

    .line 485
    move-object v9, v0

    move v10, v7

    iput v10, v9, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->absX:I

    .line 486
    move-object v9, v0

    move v10, v8

    iput v10, v9, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->absY:I

    .line 487
    return-void
.end method

.method static synthetic access$1600(Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;)Lcom/sun/glass/ui/lens/LensView;
    .locals 2

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->view:Lcom/sun/glass/ui/lens/LensView;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;
    return-object v0
.end method

.method static synthetic access$1700(Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;)J
    .locals 3

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->id:J

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;
    return-wide v0
.end method

.method static synthetic access$1800(Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;)I
    .locals 2

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->state:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;
    return v0
.end method

.method static synthetic access$1902(Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;I)I
    .locals 7

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->x:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;
    return v0
.end method

.method static synthetic access$2002(Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;I)I
    .locals 7

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->y:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;
    return v0
.end method

.method static synthetic access$2102(Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;I)I
    .locals 7

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->absX:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;
    return v0
.end method

.method static synthetic access$2202(Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;I)I
    .locals 7

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->absY:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;
    return v0
.end method


# virtual methods
.method dispatch()V
    .locals 10

    .prologue
    .line 491
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->view:Lcom/sun/glass/ui/lens/LensView;

    move-object v3, v1

    iget v3, v3, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->state:I

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->id:J

    move-object v6, v1

    iget v6, v6, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->x:I

    move-object v7, v1

    iget v7, v7, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->y:I

    move-object v8, v1

    iget v8, v8, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->absX:I

    move-object v9, v1

    iget v9, v9, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->absY:I

    invoke-static/range {v2 .. v9}, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->postTouchEvent(Lcom/sun/glass/ui/lens/LensView;IJIIII)V

    .line 492
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LensTouchEvent[view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->view:Lcom/sun/glass/ui/lens/LensView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",absX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->absX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",absY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->absY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;
    return-object v0
.end method
