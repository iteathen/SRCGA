.class Ljavafx/scene/transform/Affine$AffineAtomicChange;
.super Ljava/lang/Object;
.source "Affine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/transform/Affine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AffineAtomicChange"
.end annotation


# instance fields
.field private running:Z

.field final synthetic this$0:Ljavafx/scene/transform/Affine;


# direct methods
.method private constructor <init>(Ljavafx/scene/transform/Affine;)V
    .locals 4

    .prologue
    .line 5763
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine$AffineAtomicChange;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 5764
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/transform/Affine$AffineAtomicChange;->running:Z

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/transform/Affine;Ljavafx/scene/transform/Affine$1;)V
    .locals 5

    .prologue
    .line 5763
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine$AffineAtomicChange;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/transform/Affine;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/transform/Affine$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/transform/Affine$AffineAtomicChange;-><init>(Ljavafx/scene/transform/Affine;)V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/transform/Affine$AffineAtomicChange;)Z
    .locals 2

    .prologue
    .line 5763
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/transform/Affine$AffineAtomicChange;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->runs()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/transform/Affine$AffineAtomicChange;
    return v0
.end method

.method static synthetic access$300(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V
    .locals 2

    .prologue
    .line 5763
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/transform/Affine$AffineAtomicChange;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->start()V

    return-void
.end method

.method static synthetic access$400(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V
    .locals 2

    .prologue
    .line 5763
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/transform/Affine$AffineAtomicChange;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->end()V

    return-void
.end method

.method static synthetic access$500(Ljavafx/scene/transform/Affine$AffineAtomicChange;)V
    .locals 2

    .prologue
    .line 5763
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/transform/Affine$AffineAtomicChange;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->cancel()V

    return-void
.end method

.method private cancel()V
    .locals 3

    .prologue
    .line 5804
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine$AffineAtomicChange;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->running:Z

    .line 5805
    return-void
.end method

.method private end()V
    .locals 3

    .prologue
    .line 5787
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine$AffineAtomicChange;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->running:Z

    .line 5788
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-virtual {v1}, Ljavafx/scene/transform/Affine;->transformChanged()V

    .line 5789
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$600(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$600(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$1900(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5790
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$800(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$800(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$1900(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5791
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$900(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$900(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$1900(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5792
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1000(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1000(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$1900(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5793
    :cond_3
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1100(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1100(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$1900(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5794
    :cond_4
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1200(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1200(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$1900(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5795
    :cond_5
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1300(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1300(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$1900(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5796
    :cond_6
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1400(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_7

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1400(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$1900(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5797
    :cond_7
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1500(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_8

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1500(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$1900(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5798
    :cond_8
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1600(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_9

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1600(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$1900(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5799
    :cond_9
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1700(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_a

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1700(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$1900(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5800
    :cond_a
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1800(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_b

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1800(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$1900(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5801
    :cond_b
    return-void
.end method

.method private runs()Z
    .locals 2

    .prologue
    .line 5808
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine$AffineAtomicChange;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->running:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Affine$AffineAtomicChange;
    return v0
.end method

.method private start()V
    .locals 5

    .prologue
    .line 5767
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine$AffineAtomicChange;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->running:Z

    if-eqz v1, :cond_0

    .line 5768
    new-instance v1, Ljava/lang/InternalError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Affine internal error: trying to run inner atomic operation"

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5771
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$600(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$600(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$700(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5772
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$800(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$800(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$700(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5773
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$900(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$900(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$700(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5774
    :cond_3
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1000(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1000(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$700(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5775
    :cond_4
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1100(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1100(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$700(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5776
    :cond_5
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1200(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1200(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$700(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5777
    :cond_6
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1300(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_7

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1300(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$700(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5778
    :cond_7
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1400(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_8

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1400(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$700(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5779
    :cond_8
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1500(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_9

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1500(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$700(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5780
    :cond_9
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1600(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_a

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1600(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$700(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5781
    :cond_a
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1700(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_b

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1700(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$700(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5782
    :cond_b
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1800(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    if-eqz v1, :cond_c

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$1800(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine$AffineElementProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->access$700(Ljavafx/scene/transform/Affine$AffineElementProperty;)V

    .line 5783
    :cond_c
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/transform/Affine$AffineAtomicChange;->running:Z

    .line 5784
    return-void
.end method
