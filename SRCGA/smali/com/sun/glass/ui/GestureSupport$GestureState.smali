.class Lcom/sun/glass/ui/GestureSupport$GestureState;
.super Ljava/lang/Object;
.source "GestureSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/GestureSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GestureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;
    }
.end annotation


# instance fields
.field private id:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/GestureSupport$GestureState;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v1, v0

    sget-object v2, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Idle:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    iput-object v2, v1, Lcom/sun/glass/ui/GestureSupport$GestureState;->id:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/glass/ui/GestureSupport$1;)V
    .locals 3

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/GestureSupport$GestureState;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/glass/ui/GestureSupport$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/glass/ui/GestureSupport$GestureState;-><init>()V

    return-void
.end method


# virtual methods
.method doesGestureStart(Z)Z
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/GestureSupport$GestureState;
    move v1, p1

    .local v1, "isInertia":Z
    sget-object v2, Lcom/sun/glass/ui/GestureSupport$1;->$SwitchMap$com$sun$glass$ui$GestureSupport$GestureState$StateId:[I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/GestureSupport$GestureState;->id:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    invoke-virtual {v3}, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 66
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/GestureSupport$GestureState;
    :goto_0
    return v0

    .line 62
    .restart local v0    # "this":Lcom/sun/glass/ui/GestureSupport$GestureState;
    :pswitch_0
    move v2, v1

    move v0, v2

    goto :goto_0

    .line 64
    :pswitch_1
    move v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method isIdle()Z
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/GestureSupport$GestureState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/GestureSupport$GestureState;->id:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    sget-object v2, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Idle:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/GestureSupport$GestureState;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/GestureSupport$GestureState;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setIdle()V
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/GestureSupport$GestureState;
    move-object v1, v0

    sget-object v2, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Idle:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    iput-object v2, v1, Lcom/sun/glass/ui/GestureSupport$GestureState;->id:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    .line 41
    return-void
.end method

.method updateProgress(Z)I
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/GestureSupport$GestureState;
    move v1, p1

    .local v1, "isInertia":Z
    const/4 v3, 0x2

    move v2, v3

    .line 50
    .local v2, "eventID":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/GestureSupport$GestureState;->doesGestureStart(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    if-nez v3, :cond_0

    .line 51
    const/4 v3, 0x1

    move v2, v3

    .line 54
    :cond_0
    move-object v3, v0

    move v4, v1

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Inertia:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    :goto_0
    iput-object v4, v3, Lcom/sun/glass/ui/GestureSupport$GestureState;->id:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    .line 56
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/GestureSupport$GestureState;
    return v0

    .line 54
    .restart local v0    # "this":Lcom/sun/glass/ui/GestureSupport$GestureState;
    :cond_1
    sget-object v4, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Running:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    goto :goto_0
.end method
