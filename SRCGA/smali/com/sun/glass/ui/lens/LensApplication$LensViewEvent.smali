.class Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;
.super Lcom/sun/glass/ui/lens/LensApplication$Event;
.source "LensApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/lens/LensApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LensViewEvent"
.end annotation


# instance fields
.field private height:I

.field private target:Lcom/sun/glass/ui/lens/LensView;

.field private viewEventType:I

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/lens/LensView;IIIII)V
    .locals 9

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;
    move-object v1, p1

    .local v1, "view":Lcom/sun/glass/ui/lens/LensView;
    move v2, p2

    .local v2, "viewEventType":I
    move v3, p3

    .local v3, "x":I
    move v4, p4

    .local v4, "y":I
    move v5, p5

    .local v5, "width":I
    move v6, p6

    .local v6, "height":I
    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/sun/glass/ui/lens/LensApplication$Event;-><init>(Lcom/sun/glass/ui/lens/LensApplication$1;)V

    .line 552
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;->target:Lcom/sun/glass/ui/lens/LensView;

    .line 553
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;->x:I

    .line 554
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;->y:I

    .line 555
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;->width:I

    .line 556
    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;->height:I

    .line 557
    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;->viewEventType:I

    .line 558
    return-void
.end method


# virtual methods
.method dispatch()V
    .locals 3

    .prologue
    .line 562
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;->target:Lcom/sun/glass/ui/lens/LensView;

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;->viewEventType:I

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/lens/LensView;->_notifyViewEvent(I)V

    .line 563
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 567
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LensViewEvent[target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;->target:Lcom/sun/glass/ui/lens/LensView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event type code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;->viewEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event type name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;->viewEventType:I

    .line 574
    invoke-static {v2}, Lcom/sun/glass/events/ViewEvent;->getTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;
    return-object v0
.end method
