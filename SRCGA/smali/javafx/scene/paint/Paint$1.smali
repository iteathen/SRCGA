.class final Ljavafx/scene/paint/Paint$1;
.super Ljava/lang/Object;
.source "Paint.java"

# interfaces
.implements Lcom/sun/javafx/tk/Toolkit$PaintAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/paint/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/Paint$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/scene/paint/Paint;Lcom/sun/javafx/beans/event/AbstractNotifyListener;)V
    .locals 5

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/Paint$1;
    move-object v1, p1

    .local v1, "paint":Ljavafx/scene/paint/Paint;
    move-object v2, p2

    .local v2, "platformChangeListener":Lcom/sun/javafx/beans/event/AbstractNotifyListener;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/paint/Paint;->acc_addListener(Lcom/sun/javafx/beans/event/AbstractNotifyListener;)V

    .line 57
    return-void
.end method

.method public getPlatformPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/Paint$1;
    move-object v1, p1

    .local v1, "paint":Ljavafx/scene/paint/Paint;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/paint/Paint;->acc_getPlatformPaint()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/paint/Paint$1;
    return-object v0
.end method

.method public isMutable(Ljavafx/scene/paint/Paint;)Z
    .locals 3

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/Paint$1;
    move-object v1, p1

    .local v1, "paint":Ljavafx/scene/paint/Paint;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/paint/Paint;->acc_isMutable()Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/paint/Paint$1;
    return v0
.end method

.method public removeListener(Ljavafx/scene/paint/Paint;Lcom/sun/javafx/beans/event/AbstractNotifyListener;)V
    .locals 5

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/Paint$1;
    move-object v1, p1

    .local v1, "paint":Ljavafx/scene/paint/Paint;
    move-object v2, p2

    .local v2, "platformChangeListener":Lcom/sun/javafx/beans/event/AbstractNotifyListener;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/paint/Paint;->acc_removeListener(Lcom/sun/javafx/beans/event/AbstractNotifyListener;)V

    .line 62
    return-void
.end method
