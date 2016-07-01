.class public final Lcom/sun/javafx/scene/control/skin/resources/ControlResources;
.super Ljava/lang/Object;
.source "ControlResources.java"


# static fields
.field private static final BASE_NAME:Ljava/lang/String; = "com/sun/javafx/scene/control/skin/resources/controls"

.field private static final NT_BASE_NAME:Ljava/lang/String; = "com/sun/javafx/scene/control/skin/resources/controls-nt"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/resources/ControlResources;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static getNonTranslatableString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    const-string v1, "com/sun/javafx/scene/control/skin/resources/controls-nt"

    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "key":Ljava/lang/String;
    return-object v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    const-string v1, "com/sun/javafx/scene/control/skin/resources/controls"

    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "key":Ljava/lang/String;
    return-object v0
.end method
