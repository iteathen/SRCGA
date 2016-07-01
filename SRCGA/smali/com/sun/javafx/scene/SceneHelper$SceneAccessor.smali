.class public interface abstract Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;
.super Ljava/lang/Object;
.source "SceneHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/SceneHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SceneAccessor"
.end annotation


# virtual methods
.method public abstract createPopupScene(Ljavafx/scene/Parent;)Ljavafx/scene/Scene;
.end method

.method public abstract getAccessible(Ljavafx/scene/Scene;)Lcom/sun/glass/ui/Accessible;
.end method

.method public abstract getEffectiveCamera(Ljavafx/scene/Scene;)Ljavafx/scene/Camera;
.end method

.method public abstract parentEffectiveOrientationInvalidated(Ljavafx/scene/Scene;)V
.end method

.method public abstract setPaused(Z)V
.end method

.method public abstract setTransientFocusContainer(Ljavafx/scene/Scene;Ljavafx/scene/Node;)V
.end method
