.class public abstract Ljavafx/scene/paint/Paint;
.super Ljava/lang/Object;
.source "Paint.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljavafx/scene/paint/Paint$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/paint/Paint$1;-><init>()V

    invoke-static {v0}, Lcom/sun/javafx/tk/Toolkit;->setPaintAccessor(Lcom/sun/javafx/tk/Toolkit$PaintAccessor;)V

    .line 66
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/Paint;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/paint/Paint;
    .locals 5

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "value":Ljava/lang/String;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "paint must be specified"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_0
    move-object v1, v0

    const-string v2, "linear-gradient("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/paint/LinearGradient;->valueOf(Ljava/lang/String;)Ljavafx/scene/paint/LinearGradient;

    move-result-object v1

    move-object v0, v1

    .line 127
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 124
    .restart local v0    # "value":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    const-string v2, "radial-gradient("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/paint/RadialGradient;->valueOf(Ljava/lang/String;)Ljavafx/scene/paint/RadialGradient;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 127
    :cond_2
    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/paint/Color;->valueOf(Ljava/lang/String;)Ljavafx/scene/paint/Color;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method acc_addListener(Lcom/sun/javafx/beans/event/AbstractNotifyListener;)V
    .locals 6

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/Paint;
    move-object v1, p1

    .local v1, "platformChangeListener":Lcom/sun/javafx/beans/event/AbstractNotifyListener;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not Supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method abstract acc_getPlatformPaint()Ljava/lang/Object;
.end method

.method acc_isMutable()Z
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/Paint;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/Paint;
    return v0
.end method

.method acc_removeListener(Lcom/sun/javafx/beans/event/AbstractNotifyListener;)V
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/Paint;
    move-object v1, p1

    .local v1, "platformChangeListener":Lcom/sun/javafx/beans/event/AbstractNotifyListener;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not Supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public abstract isOpaque()Z
.end method
