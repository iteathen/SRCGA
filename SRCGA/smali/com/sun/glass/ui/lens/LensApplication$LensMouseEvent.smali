.class Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
.super Lcom/sun/glass/ui/lens/LensApplication$Event;
.source "LensApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/lens/LensApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LensMouseEvent"
.end annotation


# instance fields
.field private absx:I

.field private absy:I

.field private action:I

.field private button:I

.field private isPopupTrigger:Z

.field private isSynthesized:Z

.field private modifiers:I

.field private target:Lcom/sun/glass/ui/lens/LensView;

.field private x:I

.field private y:I


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/lens/LensView;IIIIIIIZZ)V
    .locals 13

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    move-object v1, p1

    .local v1, "target":Lcom/sun/glass/ui/lens/LensView;
    move v2, p2

    .local v2, "action":I
    move/from16 v3, p3

    .local v3, "x":I
    move/from16 v4, p4

    .local v4, "y":I
    move/from16 v5, p5

    .local v5, "absx":I
    move/from16 v6, p6

    .local v6, "absy":I
    move/from16 v7, p7

    .local v7, "button":I
    move/from16 v8, p8

    .local v8, "modifiers":I
    move/from16 v9, p9

    .local v9, "isPopupTrigger":Z
    move/from16 v10, p10

    .local v10, "isSynthesized":Z
    move-object v11, v0

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/sun/glass/ui/lens/LensApplication$Event;-><init>(Lcom/sun/glass/ui/lens/LensApplication$1;)V

    .line 364
    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->target:Lcom/sun/glass/ui/lens/LensView;

    .line 365
    move-object v11, v0

    move v12, v2

    iput v12, v11, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->action:I

    .line 366
    move-object v11, v0

    move v12, v3

    iput v12, v11, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->x:I

    .line 367
    move-object v11, v0

    move v12, v4

    iput v12, v11, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->y:I

    .line 368
    move-object v11, v0

    move v12, v5

    iput v12, v11, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->absx:I

    .line 369
    move-object v11, v0

    move v12, v6

    iput v12, v11, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->absy:I

    .line 370
    move-object v11, v0

    move v12, v7

    iput v12, v11, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->button:I

    .line 371
    move-object v11, v0

    move v12, v8

    iput v12, v11, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->modifiers:I

    .line 372
    move-object v11, v0

    move v12, v9

    iput-boolean v12, v11, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->isPopupTrigger:Z

    .line 373
    move-object v11, v0

    move v12, v10

    iput-boolean v12, v11, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->isSynthesized:Z

    .line 374
    return-void
.end method

.method static synthetic access$1000(Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;)Z
    .locals 2

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->isSynthesized:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    return v0
.end method

.method static synthetic access$1102(Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;I)I
    .locals 7

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->x:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    return v0
.end method

.method static synthetic access$1202(Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;I)I
    .locals 7

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->y:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    return v0
.end method

.method static synthetic access$1302(Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;I)I
    .locals 7

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->absx:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    return v0
.end method

.method static synthetic access$1402(Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;I)I
    .locals 7

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->absy:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    return v0
.end method

.method static synthetic access$500(Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;)Lcom/sun/glass/ui/lens/LensView;
    .locals 2

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->target:Lcom/sun/glass/ui/lens/LensView;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    return-object v0
.end method

.method static synthetic access$600(Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;)I
    .locals 2

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->action:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    return v0
.end method

.method static synthetic access$700(Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;)I
    .locals 2

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->button:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    return v0
.end method

.method static synthetic access$800(Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;)I
    .locals 2

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->modifiers:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    return v0
.end method

.method static synthetic access$900(Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;)Z
    .locals 2

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->isPopupTrigger:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    return v0
.end method


# virtual methods
.method dispatch()V
    .locals 11

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->target:Lcom/sun/glass/ui/lens/LensView;

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->action:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->button:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->x:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->y:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->absx:I

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->absy:I

    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->modifiers:I

    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->isPopupTrigger:Z

    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->isSynthesized:Z

    invoke-virtual/range {v1 .. v10}, Lcom/sun/glass/ui/lens/LensView;->_notifyMouse(IIIIIIIZZ)V

    .line 384
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LensMouseEvent[target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->target:Lcom/sun/glass/ui/lens/LensView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->action:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",absx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->absx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",absy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->absy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",button="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->button:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",modifiers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->modifiers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isPopupTrigger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->isPopupTrigger:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isSynthesized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->isSynthesized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    return-object v0
.end method
