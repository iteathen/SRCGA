.class final enum Ljavafx/fxml/FXMLLoader$SupportedType$1;
.super Ljavafx/fxml/FXMLLoader$SupportedType;
.source "FXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/FXMLLoader$SupportedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 2920
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$SupportedType$1;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/fxml/FXMLLoader$SupportedType;-><init>(Ljava/lang/String;ILjavafx/fxml/FXMLLoader$1;)V

    return-void
.end method


# virtual methods
.method protected methodIsOfType(Ljava/lang/reflect/Method;)Z
    .locals 3

    .prologue
    .line 2924
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$SupportedType$1;
    move-object v1, p1

    .local v1, "m":Ljava/lang/reflect/Method;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$SupportedType$1;
    return v0

    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader$SupportedType$1;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
