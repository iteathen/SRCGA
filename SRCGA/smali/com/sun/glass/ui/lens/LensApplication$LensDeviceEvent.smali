.class Lcom/sun/glass/ui/lens/LensApplication$LensDeviceEvent;
.super Lcom/sun/glass/ui/lens/LensApplication$Event;
.source "LensApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/lens/LensApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LensDeviceEvent"
.end annotation


# instance fields
.field private attach:Z

.field private flags:I

.field final synthetic this$0:Lcom/sun/glass/ui/lens/LensApplication;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/lens/LensApplication;IZ)V
    .locals 6

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensDeviceEvent;
    move-object v1, p1

    move v2, p2

    .local v2, "flags":I
    move v3, p3

    .local v3, "attach":Z
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/glass/ui/lens/LensApplication$LensDeviceEvent;->this$0:Lcom/sun/glass/ui/lens/LensApplication;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/lens/LensApplication$Event;-><init>(Lcom/sun/glass/ui/lens/LensApplication$1;)V

    .line 673
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/glass/ui/lens/LensApplication$LensDeviceEvent;->flags:I

    .line 674
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lcom/sun/glass/ui/lens/LensApplication$LensDeviceEvent;->attach:Z

    .line 675
    return-void
.end method


# virtual methods
.method dispatch()V
    .locals 8

    .prologue
    .line 678
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensDeviceEvent;
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    const/4 v3, 0x4

    if-gt v2, v3, :cond_2

    .line 679
    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensDeviceEvent;->flags:I

    const/4 v3, 0x1

    move v4, v1

    shl-int/2addr v3, v4

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 680
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensDeviceEvent;->attach:Z

    if-eqz v2, :cond_1

    .line 681
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensDeviceEvent;->this$0:Lcom/sun/glass/ui/lens/LensApplication;

    invoke-static {v2}, Lcom/sun/glass/ui/lens/LensApplication;->access$300(Lcom/sun/glass/ui/lens/LensApplication;)[I

    move-result-object v2

    move v3, v1

    move-object v6, v2

    move v7, v3

    move-object v2, v6

    move v3, v7

    move-object v4, v6

    move v5, v7

    aget v4, v4, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 678
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 683
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensDeviceEvent;->this$0:Lcom/sun/glass/ui/lens/LensApplication;

    invoke-static {v2}, Lcom/sun/glass/ui/lens/LensApplication;->access$300(Lcom/sun/glass/ui/lens/LensApplication;)[I

    move-result-object v2

    move v3, v1

    move-object v6, v2

    move v7, v3

    move-object v2, v6

    move v3, v7

    move-object v4, v6

    move v5, v7

    aget v4, v4, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aput v4, v2, v3

    goto :goto_1

    .line 688
    :cond_2
    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensDeviceEvent;->flags:I

    const/4 v3, 0x4

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 690
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensDeviceEvent;->attach:Z

    if-eqz v2, :cond_4

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensDeviceEvent;->this$0:Lcom/sun/glass/ui/lens/LensApplication;

    invoke-static {v2}, Lcom/sun/glass/ui/lens/LensApplication;->access$300(Lcom/sun/glass/ui/lens/LensApplication;)[I

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensDeviceEvent;->this$0:Lcom/sun/glass/ui/lens/LensApplication;

    invoke-static {v2}, Lcom/sun/glass/ui/lens/LensApplication;->access$400(Lcom/sun/glass/ui/lens/LensApplication;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 691
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sun/glass/ui/lens/LensCursor;->setVisible_impl(Z)V

    .line 696
    :cond_3
    :goto_2
    return-void

    .line 692
    :cond_4
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensDeviceEvent;->attach:Z

    if-nez v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensDeviceEvent;->this$0:Lcom/sun/glass/ui/lens/LensApplication;

    invoke-static {v2}, Lcom/sun/glass/ui/lens/LensApplication;->access$300(Lcom/sun/glass/ui/lens/LensApplication;)[I

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    if-nez v2, :cond_3

    .line 693
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sun/glass/ui/lens/LensCursor;->setVisible_impl(Z)V

    goto :goto_2
.end method
