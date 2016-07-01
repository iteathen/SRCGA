.class Ljavafx/fxml/FXMLLoader$2;
.super Ljavax/xml/stream/util/StreamReaderDelegate;
.source "FXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/fxml/FXMLLoader;->loadImpl(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/fxml/FXMLLoader;


# direct methods
.method constructor <init>(Ljavafx/fxml/FXMLLoader;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 5

    .prologue
    .line 2478
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/fxml/FXMLLoader;
    move-object v2, p2

    .local v2, "x0":Ljavax/xml/stream/XMLStreamReader;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/fxml/FXMLLoader$2;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavax/xml/stream/util/StreamReaderDelegate;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method


# virtual methods
.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 2493
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$2;
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Ljavax/xml/stream/util/StreamReaderDelegate;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 2495
    .local v2, "attributePrefix":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 2496
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 2497
    const/4 v3, 0x0

    move-object v2, v3

    .line 2500
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$2;
    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2481
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$2;
    move-object v2, v0

    invoke-super {v2}, Ljavax/xml/stream/util/StreamReaderDelegate;->getPrefix()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 2483
    .local v1, "prefix":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 2484
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 2485
    const/4 v2, 0x0

    move-object v1, v2

    .line 2488
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$2;
    return-object v0
.end method
