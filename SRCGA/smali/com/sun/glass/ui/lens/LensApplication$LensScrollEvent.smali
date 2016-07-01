.class Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;
.super Lcom/sun/glass/ui/lens/LensApplication$Event;
.source "LensApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/lens/LensApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LensScrollEvent"
.end annotation


# instance fields
.field private absx:I

.field private absy:I

.field private chars:I

.field private defaultChars:I

.field private defaultLines:I

.field private deltaX:D

.field private deltaY:D

.field private lines:I

.field private modifiers:I

.field private target:Lcom/sun/glass/ui/lens/LensView;

.field private x:I

.field private xMultiplier:D

.field private y:I

.field private yMultiplier:D


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/lens/LensView;IIIIDDIIIIIDD)V
    .locals 26

    .prologue
    .line 418
    move-object/from16 v4, p0

    .local v4, "this":Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;
    move-object/from16 v5, p1

    .local v5, "target":Lcom/sun/glass/ui/lens/LensView;
    move/from16 v6, p2

    .local v6, "x":I
    move/from16 v7, p3

    .local v7, "y":I
    move/from16 v8, p4

    .local v8, "absx":I
    move/from16 v9, p5

    .local v9, "absy":I
    move-wide/from16 v10, p6

    .local v10, "deltaX":D
    move-wide/from16 v12, p8

    .local v12, "deltaY":D
    move/from16 v14, p10

    .local v14, "modifiers":I
    move/from16 v15, p11

    .local v15, "lines":I
    move/from16 v16, p12

    .local v16, "chars":I
    move/from16 v17, p13

    .local v17, "defaultLines":I
    move/from16 v18, p14

    .local v18, "defaultChars":I
    move-wide/from16 v19, p15

    .local v19, "xMultiplier":D
    move-wide/from16 v21, p17

    .local v21, "yMultiplier":D
    move-object/from16 v23, v4

    const/16 v24, 0x0

    invoke-direct/range {v23 .. v24}, Lcom/sun/glass/ui/lens/LensApplication$Event;-><init>(Lcom/sun/glass/ui/lens/LensApplication$1;)V

    .line 420
    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->target:Lcom/sun/glass/ui/lens/LensView;

    .line 421
    move-object/from16 v23, v4

    move/from16 v24, v6

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->x:I

    .line 422
    move-object/from16 v23, v4

    move/from16 v24, v7

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->y:I

    .line 423
    move-object/from16 v23, v4

    move/from16 v24, v8

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->absx:I

    .line 424
    move-object/from16 v23, v4

    move/from16 v24, v9

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->absy:I

    .line 425
    move-object/from16 v23, v4

    move-wide/from16 v24, v10

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->deltaX:D

    .line 426
    move-object/from16 v23, v4

    move-wide/from16 v24, v12

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->deltaY:D

    .line 427
    move-object/from16 v23, v4

    move/from16 v24, v14

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->modifiers:I

    .line 428
    move-object/from16 v23, v4

    move/from16 v24, v15

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->lines:I

    .line 429
    move-object/from16 v23, v4

    move/from16 v24, v16

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->chars:I

    .line 430
    move-object/from16 v23, v4

    move/from16 v24, v17

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->defaultLines:I

    .line 431
    move-object/from16 v23, v4

    move/from16 v24, v18

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->defaultChars:I

    .line 432
    move-object/from16 v23, v4

    move-wide/from16 v24, v19

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->xMultiplier:D

    .line 433
    move-object/from16 v23, v4

    move-wide/from16 v24, v21

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->yMultiplier:D

    .line 434
    return-void
.end method


# virtual methods
.method dispatch()V
    .locals 21

    .prologue
    .line 438
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;
    move-object v3, v2

    iget-object v3, v3, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->target:Lcom/sun/glass/ui/lens/LensView;

    move-object v4, v2

    iget v4, v4, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->x:I

    move-object v5, v2

    iget v5, v5, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->y:I

    move-object v6, v2

    iget v6, v6, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->absx:I

    move-object v7, v2

    iget v7, v7, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->absy:I

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->deltaX:D

    move-object v10, v2

    iget-wide v10, v10, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->deltaY:D

    move-object v12, v2

    iget v12, v12, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->modifiers:I

    move-object v13, v2

    iget v13, v13, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->lines:I

    move-object v14, v2

    iget v14, v14, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->chars:I

    move-object v15, v2

    iget v15, v15, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->defaultLines:I

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->defaultChars:I

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->xMultiplier:D

    move-wide/from16 v17, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->yMultiplier:D

    move-wide/from16 v19, v0

    invoke-virtual/range {v3 .. v20}, Lcom/sun/glass/ui/lens/LensView;->_notifyScroll(IIIIDDIIIIIDD)V

    .line 446
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LensScrollEvent[target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->target:Lcom/sun/glass/ui/lens/LensView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",absx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->absx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",absy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->absy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",deltaX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->deltaX:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",deltaY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->deltaY:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",modifiers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->modifiers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lines="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->lines:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",chars="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->chars:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",defaultLines="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->defaultLines:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",defaultChars="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->defaultChars:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",xMultiplier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->xMultiplier:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",yMultiplier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;->yMultiplier:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;
    return-object v0
.end method
