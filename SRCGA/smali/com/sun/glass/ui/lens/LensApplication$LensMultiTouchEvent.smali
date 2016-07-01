.class Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
.super Lcom/sun/glass/ui/lens/LensApplication$Event;
.source "LensApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/lens/LensApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LensMultiTouchEvent"
.end annotation


# instance fields
.field private dx:I

.field private dy:I

.field private ids:[J

.field private states:[I

.field private view:Lcom/sun/glass/ui/lens/LensView;

.field private xs:[I

.field private ys:[I


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/lens/LensView;[I[J[I[III)V
    .locals 10

    .prologue
    .line 518
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    move-object v1, p1

    .local v1, "view":Lcom/sun/glass/ui/lens/LensView;
    move-object v2, p2

    .local v2, "states":[I
    move-object v3, p3

    .local v3, "ids":[J
    move-object v4, p4

    .local v4, "xs":[I
    move-object v5, p5

    .local v5, "ys":[I
    move/from16 v6, p6

    .local v6, "dx":I
    move/from16 v7, p7

    .local v7, "dy":I
    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/sun/glass/ui/lens/LensApplication$Event;-><init>(Lcom/sun/glass/ui/lens/LensApplication$1;)V

    .line 519
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->view:Lcom/sun/glass/ui/lens/LensView;

    .line 520
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->states:[I

    .line 521
    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->ids:[J

    .line 522
    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->xs:[I

    .line 523
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->ys:[I

    .line 524
    move-object v8, v0

    move v9, v6

    iput v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->dx:I

    .line 525
    move-object v8, v0

    move v9, v7

    iput v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->dy:I

    .line 526
    return-void
.end method

.method static synthetic access$2300(Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;)Lcom/sun/glass/ui/lens/LensView;
    .locals 2

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->view:Lcom/sun/glass/ui/lens/LensView;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    return-object v0
.end method

.method static synthetic access$2400(Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;)[I
    .locals 2

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->states:[I

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    return-object v0
.end method

.method static synthetic access$2402(Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;[I)[I
    .locals 7

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    move-object v1, p1

    .local v1, "x1":[I
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->states:[I

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    return-object v0
.end method

.method static synthetic access$2500(Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;)[J
    .locals 2

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->ids:[J

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    return-object v0
.end method

.method static synthetic access$2602(Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;[I)[I
    .locals 7

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    move-object v1, p1

    .local v1, "x1":[I
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->xs:[I

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    return-object v0
.end method

.method static synthetic access$2702(Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;[I)[I
    .locals 7

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    move-object v1, p1

    .local v1, "x1":[I
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->ys:[I

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    return-object v0
.end method

.method static synthetic access$2802(Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;I)I
    .locals 7

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->dx:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    return v0
.end method

.method static synthetic access$2902(Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;I)I
    .locals 7

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->dy:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    return v0
.end method


# virtual methods
.method dispatch()V
    .locals 8

    .prologue
    .line 530
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->view:Lcom/sun/glass/ui/lens/LensView;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->states:[I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->ids:[J

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->xs:[I

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->ys:[I

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->dx:I

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->dy:I

    invoke-static/range {v1 .. v7}, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->postMultiTouchEvent(Lcom/sun/glass/ui/lens/LensView;[I[J[I[III)V

    .line 532
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 536
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LensMultiTouchEvent[view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->view:Lcom/sun/glass/ui/lens/LensView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ids "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->ids:[J

    .line 537
    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", states "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->states:[I

    .line 538
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", xs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->xs:[I

    .line 539
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ys "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->ys:[I

    .line 540
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    return-object v0
.end method
