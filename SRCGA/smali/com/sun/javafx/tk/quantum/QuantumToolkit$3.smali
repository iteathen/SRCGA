.class final Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
.super Ljava/lang/Object;
.source "QuantumToolkit.java"

# interfaces
.implements Lcom/sun/javafx/tk/ScreenConfigurationAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/quantum/QuantumToolkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 644
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDPI(Ljava/lang/Object;)F
    .locals 3

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/sun/glass/ui/Screen;

    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getResolutionX()I

    move-result v2

    int-to-float v2, v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    return v0
.end method

.method public getHeight(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 655
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/sun/glass/ui/Screen;

    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getHeight()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    return v0
.end method

.method public getMinX(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 646
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/sun/glass/ui/Screen;

    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getX()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    return v0
.end method

.method public getMinY(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 649
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/sun/glass/ui/Screen;

    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getY()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    return v0
.end method

.method public getRenderScale(Ljava/lang/Object;)F
    .locals 3

    .prologue
    .line 676
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/sun/glass/ui/Screen;

    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getRenderScale()F

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    return v0
.end method

.method public getUIScale(Ljava/lang/Object;)F
    .locals 3

    .prologue
    .line 673
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/sun/glass/ui/Screen;

    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getUIScale()F

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    return v0
.end method

.method public getVisualHeight(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 667
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/sun/glass/ui/Screen;

    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getVisibleHeight()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    return v0
.end method

.method public getVisualMinX(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 658
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/sun/glass/ui/Screen;

    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getVisibleX()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    return v0
.end method

.method public getVisualMinY(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 661
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/sun/glass/ui/Screen;

    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getVisibleY()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    return v0
.end method

.method public getVisualWidth(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 664
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/sun/glass/ui/Screen;

    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getVisibleWidth()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    return v0
.end method

.method public getWidth(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 652
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/sun/glass/ui/Screen;

    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getWidth()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;
    return v0
.end method
