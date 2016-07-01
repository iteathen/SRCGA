.class public interface abstract Lcom/sun/javafx/tk/Toolkit$PaintAccessor;
.super Ljava/lang/Object;
.source "Toolkit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/Toolkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PaintAccessor"
.end annotation


# virtual methods
.method public abstract addListener(Ljavafx/scene/paint/Paint;Lcom/sun/javafx/beans/event/AbstractNotifyListener;)V
.end method

.method public abstract getPlatformPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;
.end method

.method public abstract isMutable(Ljavafx/scene/paint/Paint;)Z
.end method

.method public abstract removeListener(Ljavafx/scene/paint/Paint;Lcom/sun/javafx/beans/event/AbstractNotifyListener;)V
.end method
