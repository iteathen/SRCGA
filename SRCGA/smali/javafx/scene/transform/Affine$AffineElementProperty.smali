.class Ljavafx/scene/transform/Affine$AffineElementProperty;
.super Ljavafx/beans/property/SimpleDoubleProperty;
.source "Affine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/transform/Affine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AffineElementProperty"
.end annotation


# instance fields
.field private needsValueChangedEvent:Z

.field private oldValue:D

.field final synthetic this$0:Ljavafx/scene/transform/Affine;


# direct methods
.method public constructor <init>(Ljavafx/scene/transform/Affine;D)V
    .locals 8

    .prologue
    .line 914
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine$AffineElementProperty;
    move-object v1, p1

    move-wide v2, p2

    .local v2, "initialValue":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/transform/Affine$AffineElementProperty;->this$0:Ljavafx/scene/transform/Affine;

    .line 915
    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(D)V

    .line 911
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/scene/transform/Affine$AffineElementProperty;->needsValueChangedEvent:Z

    .line 916
    return-void
.end method

.method static synthetic access$1900(Ljavafx/scene/transform/Affine$AffineElementProperty;)V
    .locals 2

    .prologue
    .line 909
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/transform/Affine$AffineElementProperty;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->postProcessAtomicChange()V

    return-void
.end method

.method static synthetic access$700(Ljavafx/scene/transform/Affine$AffineElementProperty;)V
    .locals 2

    .prologue
    .line 909
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/transform/Affine$AffineElementProperty;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/transform/Affine$AffineElementProperty;->preProcessAtomicChange()V

    return-void
.end method

.method private postProcessAtomicChange()V
    .locals 6

    .prologue
    .line 951
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/transform/Affine$AffineElementProperty;
    move-object v2, v1

    iget-boolean v2, v2, Ljavafx/scene/transform/Affine$AffineElementProperty;->needsValueChangedEvent:Z

    if-eqz v2, :cond_0

    .line 952
    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/transform/Affine$AffineElementProperty;->needsValueChangedEvent:Z

    .line 955
    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/transform/Affine$AffineElementProperty;->oldValue:D

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine$AffineElementProperty;->get()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    .line 956
    move-object v2, v1

    invoke-super {v2}, Ljavafx/beans/property/SimpleDoubleProperty;->fireValueChangedEvent()V

    .line 959
    :cond_0
    return-void
.end method

.method private preProcessAtomicChange()V
    .locals 4

    .prologue
    .line 942
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine$AffineElementProperty;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/transform/Affine$AffineElementProperty;->get()D

    move-result-wide v2

    iput-wide v2, v1, Ljavafx/scene/transform/Affine$AffineElementProperty;->oldValue:D

    .line 943
    return-void
.end method


# virtual methods
.method protected fireValueChangedEvent()V
    .locals 3

    .prologue
    .line 930
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine$AffineElementProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineElementProperty;->this$0:Ljavafx/scene/transform/Affine;

    iget-object v1, v1, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$100(Ljavafx/scene/transform/Affine$AffineAtomicChange;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 931
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/property/SimpleDoubleProperty;->fireValueChangedEvent()V

    .line 935
    :goto_0
    return-void

    .line 933
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/transform/Affine$AffineElementProperty;->needsValueChangedEvent:Z

    goto :goto_0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 921
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine$AffineElementProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineElementProperty;->this$0:Ljavafx/scene/transform/Affine;

    iget-object v1, v1, Ljavafx/scene/transform/Affine;->atomicChange:Ljavafx/scene/transform/Affine$AffineAtomicChange;

    invoke-static {v1}, Ljavafx/scene/transform/Affine$AffineAtomicChange;->access$100(Ljavafx/scene/transform/Affine$AffineAtomicChange;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 922
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineElementProperty;->this$0:Ljavafx/scene/transform/Affine;

    invoke-static {v1}, Ljavafx/scene/transform/Affine;->access$200(Ljavafx/scene/transform/Affine;)V

    .line 923
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$AffineElementProperty;->this$0:Ljavafx/scene/transform/Affine;

    invoke-virtual {v1}, Ljavafx/scene/transform/Affine;->transformChanged()V

    .line 925
    :cond_0
    return-void
.end method
