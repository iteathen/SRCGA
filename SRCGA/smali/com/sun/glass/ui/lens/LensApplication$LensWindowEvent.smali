.class Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;
.super Lcom/sun/glass/ui/lens/LensApplication$Event;
.source "LensApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/lens/LensApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LensWindowEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;
    }
.end annotation


# instance fields
.field private height:I

.field private type:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

.field private width:I

.field private window:Lcom/sun/glass/ui/lens/LensWindow;

.field private windowEvent:I

.field private x:I

.field private y:I


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;Lcom/sun/glass/ui/lens/LensWindow;I)V
    .locals 6

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;
    move-object v1, p1

    .local v1, "type":Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;
    move-object v2, p2

    .local v2, "window":Lcom/sun/glass/ui/lens/LensWindow;
    move v3, p3

    .local v3, "windowEvent":I
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/lens/LensApplication$Event;-><init>(Lcom/sun/glass/ui/lens/LensApplication$1;)V

    .line 269
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->type:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    .line 270
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->window:Lcom/sun/glass/ui/lens/LensWindow;

    .line 271
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->windowEvent:I

    .line 272
    return-void
.end method

.method constructor <init>(Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;Lcom/sun/glass/ui/lens/LensWindow;IIIII)V
    .locals 10

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;
    move-object v1, p1

    .local v1, "type":Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;
    move-object v2, p2

    .local v2, "window":Lcom/sun/glass/ui/lens/LensWindow;
    move v3, p3

    .local v3, "windowEvent":I
    move v4, p4

    .local v4, "x":I
    move v5, p5

    .local v5, "y":I
    move/from16 v6, p6

    .local v6, "width":I
    move/from16 v7, p7

    .local v7, "height":I
    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/sun/glass/ui/lens/LensApplication$Event;-><init>(Lcom/sun/glass/ui/lens/LensApplication$1;)V

    .line 290
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->type:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    .line 291
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->window:Lcom/sun/glass/ui/lens/LensWindow;

    .line 292
    move-object v8, v0

    move v9, v3

    iput v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->windowEvent:I

    .line 293
    move-object v8, v0

    move v9, v4

    iput v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->x:I

    .line 294
    move-object v8, v0

    move v9, v5

    iput v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->y:I

    .line 295
    move-object v8, v0

    move v9, v6

    iput v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->width:I

    .line 296
    move-object v8, v0

    move v9, v7

    iput v9, v8, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->height:I

    .line 297
    return-void
.end method


# virtual methods
.method dispatch()V
    .locals 6

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;
    sget-object v1, Lcom/sun/glass/ui/lens/LensApplication$2;->$SwitchMap$com$sun$glass$ui$lens$LensApplication$LensWindowEvent$EType:[I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->type:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    invoke-virtual {v2}, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 328
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    const-string v2, "Unrecognized window event type"

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 331
    :goto_0
    return-void

    .line 303
    :pswitch_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->window:Lcom/sun/glass/ui/lens/LensWindow;

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->windowEvent:I

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/lens/LensWindow;->_notifyFocus(I)V

    .line 304
    goto :goto_0

    .line 306
    :pswitch_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->window:Lcom/sun/glass/ui/lens/LensWindow;

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->x:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->y:I

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/lens/LensWindow;->_notifyMove(II)V

    .line 307
    goto :goto_0

    .line 309
    :pswitch_2
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->window:Lcom/sun/glass/ui/lens/LensWindow;

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->windowEvent:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->width:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->height:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/glass/ui/lens/LensWindow;->_notifyResize(III)V

    .line 310
    goto :goto_0

    .line 312
    :pswitch_3
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->window:Lcom/sun/glass/ui/lens/LensWindow;

    invoke-virtual {v1}, Lcom/sun/glass/ui/lens/LensWindow;->_notifyFocusUngrab()V

    .line 313
    goto :goto_0

    .line 315
    :pswitch_4
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->window:Lcom/sun/glass/ui/lens/LensWindow;

    invoke-virtual {v1}, Lcom/sun/glass/ui/lens/LensWindow;->_notifyDestroy()V

    .line 316
    goto :goto_0

    .line 318
    :pswitch_5
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->window:Lcom/sun/glass/ui/lens/LensWindow;

    invoke-virtual {v1}, Lcom/sun/glass/ui/lens/LensWindow;->_notifyClose()V

    .line 319
    goto :goto_0

    .line 321
    :pswitch_6
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->window:Lcom/sun/glass/ui/lens/LensWindow;

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->x:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->y:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->width:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->height:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sun/glass/ui/lens/LensWindow;->_notifyExpose(IIII)V

    .line 322
    goto :goto_0

    .line 324
    :pswitch_7
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->window:Lcom/sun/glass/ui/lens/LensWindow;

    invoke-virtual {v1}, Lcom/sun/glass/ui/lens/LensWindow;->_notifyFocusDisabled()V

    .line 325
    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-super {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->window:Lcom/sun/glass/ui/lens/LensWindow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->type:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",windowEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->windowEvent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;
    return-object v0
.end method
