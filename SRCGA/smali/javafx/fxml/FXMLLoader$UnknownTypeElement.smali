.class Ljavafx/fxml/FXMLLoader$UnknownTypeElement;
.super Ljavafx/fxml/FXMLLoader$ValueElement;
.source "FXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/FXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnknownTypeElement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/fxml/FXMLLoader$UnknownTypeElement$UnknownValueMap;
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/fxml/FXMLLoader;


# direct methods
.method private constructor <init>(Ljavafx/fxml/FXMLLoader;)V
    .locals 5

    .prologue
    .line 1023
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$UnknownTypeElement;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$UnknownTypeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/fxml/FXMLLoader$ValueElement;-><init>(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader$1;)V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader$1;)V
    .locals 5

    .prologue
    .line 1023
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$UnknownTypeElement;
    move-object v1, p1

    .local v1, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v2, p2

    .local v2, "x1":Ljavafx/fxml/FXMLLoader$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/fxml/FXMLLoader$UnknownTypeElement;-><init>(Ljavafx/fxml/FXMLLoader;)V

    return-void
.end method


# virtual methods
.method public constructValue()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 1066
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$UnknownTypeElement;
    new-instance v1, Ljavafx/fxml/FXMLLoader$UnknownTypeElement$UnknownValueMap;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/fxml/FXMLLoader$UnknownTypeElement$UnknownValueMap;-><init>(Ljavafx/fxml/FXMLLoader$UnknownTypeElement;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$UnknownTypeElement;
    return-object v0
.end method

.method public processEndElement()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1062
    return-void
.end method
