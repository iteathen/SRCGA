.class Ljavafx/fxml/FXMLLoader$DefineElement;
.super Ljavafx/fxml/FXMLLoader$Element;
.source "FXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/FXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefineElement"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/fxml/FXMLLoader;


# direct methods
.method private constructor <init>(Ljavafx/fxml/FXMLLoader;)V
    .locals 4

    .prologue
    .line 1616
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$DefineElement;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$DefineElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/fxml/FXMLLoader$Element;-><init>(Ljavafx/fxml/FXMLLoader;)V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader$1;)V
    .locals 5

    .prologue
    .line 1616
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$DefineElement;
    move-object v1, p1

    .local v1, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v2, p2

    .local v2, "x1":Ljavafx/fxml/FXMLLoader$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/fxml/FXMLLoader$DefineElement;-><init>(Ljavafx/fxml/FXMLLoader;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 1625
    return-void
.end method

.method public isCollection()Z
    .locals 2

    .prologue
    .line 1619
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$DefineElement;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$DefineElement;
    return v0
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 1630
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$DefineElement;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "value":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$DefineElement;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v5, "Element does not support attributes."

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4
.end method
