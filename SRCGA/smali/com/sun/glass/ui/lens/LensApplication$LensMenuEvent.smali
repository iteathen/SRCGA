.class Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;
.super Lcom/sun/glass/ui/lens/LensApplication$Event;
.source "LensApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/lens/LensApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LensMenuEvent"
.end annotation


# instance fields
.field isKeyboardTrigger:Z

.field final synthetic this$0:Lcom/sun/glass/ui/lens/LensApplication;

.field view:Lcom/sun/glass/ui/lens/LensView;

.field x:I

.field xAbs:I

.field y:I

.field yAbs:I


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/lens/LensApplication;Lcom/sun/glass/ui/lens/LensView;IIIIZ)V
    .locals 10

    .prologue
    .line 644
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;
    move-object v1, p1

    move-object v2, p2

    .local v2, "view":Lcom/sun/glass/ui/lens/LensView;
    move v3, p3

    .local v3, "x":I
    move v4, p4

    .local v4, "y":I
    move v5, p5

    .local v5, "xAbs":I
    move/from16 v6, p6

    .local v6, "yAbs":I
    move/from16 v7, p7

    .local v7, "isKeyboardTrigger":Z
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;->this$0:Lcom/sun/glass/ui/lens/LensApplication;

    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/sun/glass/ui/lens/LensApplication$Event;-><init>(Lcom/sun/glass/ui/lens/LensApplication$1;)V

    .line 645
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;->view:Lcom/sun/glass/ui/lens/LensView;

    .line 646
    move-object v8, v0

    move v9, v3

    iput v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;->x:I

    .line 647
    move-object v8, v0

    move v9, v4

    iput v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;->y:I

    .line 648
    move-object v8, v0

    move v9, v5

    iput v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;->xAbs:I

    .line 649
    move-object v8, v0

    move v9, v6

    iput v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;->yAbs:I

    .line 650
    move-object v8, v0

    move v9, v7

    iput-boolean v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;->isKeyboardTrigger:Z

    .line 651
    return-void
.end method


# virtual methods
.method dispatch()V
    .locals 7

    .prologue
    .line 655
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;->view:Lcom/sun/glass/ui/lens/LensView;

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;->x:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;->y:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;->xAbs:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;->yAbs:I

    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;->isKeyboardTrigger:Z

    invoke-virtual/range {v1 .. v6}, Lcom/sun/glass/ui/lens/LensView;->_notifyMenu(IIIIZ)V

    .line 656
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 660
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LensMenuEvent[view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;->view:Lcom/sun/glass/ui/lens/LensView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", absx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;->xAbs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", absy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;->yAbs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isKeyboardTrigger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;->isKeyboardTrigger:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;
    return-object v0
.end method
