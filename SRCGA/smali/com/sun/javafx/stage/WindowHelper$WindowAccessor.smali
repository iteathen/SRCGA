.class public interface abstract Lcom/sun/javafx/stage/WindowHelper$WindowAccessor;
.super Ljava/lang/Object;
.source "WindowHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/stage/WindowHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowAccessor"
.end annotation


# virtual methods
.method public abstract getAccessControlContext(Ljavafx/stage/Window;)Ljava/security/AccessControlContext;
.end method

.method public abstract getRenderScale(Ljavafx/stage/Window;)F
.end method

.method public abstract getUIScale(Ljavafx/stage/Window;)F
.end method

.method public abstract notifyLocationChanged(Ljavafx/stage/Window;DD)V
.end method

.method public abstract notifyScreenChanged(Ljavafx/stage/Window;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract notifySizeChanged(Ljavafx/stage/Window;DD)V
.end method

.method public abstract screenProperty(Ljavafx/stage/Window;)Ljavafx/beans/property/ReadOnlyObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/stage/Window;",
            ")",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/stage/Screen;",
            ">;"
        }
    .end annotation
.end method
