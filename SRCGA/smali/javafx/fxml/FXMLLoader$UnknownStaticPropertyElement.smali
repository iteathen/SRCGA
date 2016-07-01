.class Ljavafx/fxml/FXMLLoader$UnknownStaticPropertyElement;
.super Ljavafx/fxml/FXMLLoader$Element;
.source "FXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/FXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnknownStaticPropertyElement"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/fxml/FXMLLoader;


# direct methods
.method public constructor <init>(Ljavafx/fxml/FXMLLoader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 1464
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$UnknownStaticPropertyElement;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$UnknownStaticPropertyElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/fxml/FXMLLoader$Element;-><init>(Ljavafx/fxml/FXMLLoader;)V

    .line 1465
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$UnknownStaticPropertyElement;->parent:Ljavafx/fxml/FXMLLoader$Element;

    if-nez v2, :cond_0

    .line 1466
    move-object v2, v1

    const-string v3, "Invalid root element."

    invoke-static {v2, v3}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v2

    throw v2

    .line 1469
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$UnknownStaticPropertyElement;->parent:Ljavafx/fxml/FXMLLoader$Element;

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 1470
    move-object v2, v1

    const-string v3, "Parent element does not support property elements."

    invoke-static {v2, v3}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v2

    throw v2

    .line 1472
    :cond_1
    return-void
.end method


# virtual methods
.method public isCollection()Z
    .locals 2

    .prologue
    .line 1476
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$UnknownStaticPropertyElement;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$UnknownStaticPropertyElement;
    return v0
.end method

.method public processCharacters()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1486
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$UnknownStaticPropertyElement;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$UnknownStaticPropertyElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v2}, Ljavafx/fxml/FXMLLoader;->access$200(Ljavafx/fxml/FXMLLoader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1487
    .local v1, "text":Ljava/lang/String;
    # getter for: Ljavafx/fxml/FXMLLoader;->extraneousWhitespacePattern:Ljava/util/regex/Pattern;
    invoke-static {}, Ljavafx/fxml/FXMLLoader;->access$1700()Ljava/util/regex/Pattern;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1489
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/fxml/FXMLLoader$UnknownStaticPropertyElement;->updateValue(Ljava/lang/Object;)V

    .line 1490
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1481
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$UnknownStaticPropertyElement;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/fxml/FXMLLoader$UnknownStaticPropertyElement;->updateValue(Ljava/lang/Object;)V

    .line 1482
    return-void
.end method
