.class public final Ljavafx/application/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static accessibilityActiveProperty:Ljavafx/beans/property/ReadOnlyBooleanWrapper;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Ljavafx/application/Platform;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static accessibilityActiveProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 5

    .prologue
    .line 190
    sget-object v0, Ljavafx/application/Platform;->accessibilityActiveProperty:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-class v2, Ljavafx/application/Platform;

    const-string v3, "accessibilityActive"

    invoke-direct {v1, v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ljavafx/application/Platform;->accessibilityActiveProperty:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 192
    sget-object v0, Ljavafx/application/Platform;->accessibilityActiveProperty:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->accessibilityActiveProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 194
    :cond_0
    sget-object v0, Ljavafx/application/Platform;->accessibilityActiveProperty:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v0}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v0

    return-object v0
.end method

.method public static exit()V
    .locals 0

    .prologue
    .line 117
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->exit()V

    .line 118
    return-void
.end method

.method public static isAccessibilityActive()Z
    .locals 1

    .prologue
    .line 174
    sget-object v0, Ljavafx/application/Platform;->accessibilityActiveProperty:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljavafx/application/Platform;->accessibilityActiveProperty:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v0}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v0

    goto :goto_0
.end method

.method public static isFxApplicationThread()Z
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->isFxApplicationThread()Z

    move-result v0

    return v0
.end method

.method public static isImplicitExit()Z
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->isImplicitExit()Z

    move-result v0

    return v0
.end method

.method public static isSupported(Ljavafx/application/ConditionalFeature;)Z
    .locals 2

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "feature":Ljavafx/application/ConditionalFeature;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v1

    move v0, v1

    .end local v0    # "feature":Ljavafx/application/ConditionalFeature;
    return v0
.end method

.method public static runLater(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "runnable":Ljava/lang/Runnable;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method public static setImplicitExit(Z)V
    .locals 2

    .prologue
    .line 138
    move v0, p0

    .local v0, "implicitExit":Z
    move v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->setImplicitExit(Z)V

    .line 139
    return-void
.end method
