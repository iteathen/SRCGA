.class abstract Ljavafx/fxml/FXMLLoader$ValueElement;
.super Ljavafx/fxml/FXMLLoader$Element;
.source "FXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/FXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ValueElement"
.end annotation


# instance fields
.field public fx_id:Ljava/lang/String;

.field final synthetic this$0:Ljavafx/fxml/FXMLLoader;


# direct methods
.method private constructor <init>(Ljavafx/fxml/FXMLLoader;)V
    .locals 4

    .prologue
    .line 739
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ValueElement;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/fxml/FXMLLoader$Element;-><init>(Ljavafx/fxml/FXMLLoader;)V

    .line 740
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$ValueElement;->fx_id:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader$1;)V
    .locals 5

    .prologue
    .line 739
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ValueElement;
    move-object v1, p1

    .local v1, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v2, p2

    .local v2, "x1":Ljavafx/fxml/FXMLLoader$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/fxml/FXMLLoader$ValueElement;-><init>(Ljavafx/fxml/FXMLLoader;)V

    return-void
.end method

.method private getListValue(Ljavafx/fxml/FXMLLoader$Element;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 797
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ValueElement;
    move-object v1, p1

    .local v1, "parent":Ljavafx/fxml/FXMLLoader$Element;
    move-object v2, p2

    .local v2, "listPropertyName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "value":Ljava/lang/Object;
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/fxml/FXMLLoader$Element;->isTyped()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 798
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/fxml/FXMLLoader$Element;->getValueAdapter()Lcom/sun/javafx/fxml/BeanAdapter;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/sun/javafx/fxml/BeanAdapter;->getGenericType(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v6

    move-object v4, v6

    .line 800
    .local v4, "listType":Ljava/lang/reflect/Type;
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 801
    move-object v6, v4

    invoke-static {v6}, Lcom/sun/javafx/fxml/BeanAdapter;->getGenericListItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    move-object v5, v6

    .line 803
    .local v5, "itemType":Ljava/lang/reflect/Type;
    move-object v6, v5

    instance-of v6, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_0

    .line 804
    move-object v6, v5

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    move-object v5, v6

    .line 807
    :cond_0
    move-object v6, v3

    move-object v7, v5

    check-cast v7, Ljava/lang/Class;

    invoke-static {v6, v7}, Lcom/sun/javafx/fxml/BeanAdapter;->coerce(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 811
    .end local v4    # "listType":Ljava/lang/reflect/Type;
    .end local v5    # "itemType":Ljava/lang/reflect/Type;
    :cond_1
    move-object v6, v3

    move-object v0, v6

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$ValueElement;
    return-object v0
.end method

.method private processValue()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 816
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ValueElement;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$ValueElement;->parent:Ljavafx/fxml/FXMLLoader$Element;

    if-nez v4, :cond_1

    .line 817
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$ValueElement;->value:Ljava/lang/Object;

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$1502(Ljavafx/fxml/FXMLLoader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 820
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$200(Ljavafx/fxml/FXMLLoader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v4

    const-string v5, "fx"

    invoke-interface {v4, v5}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 821
    .local v1, "fxNSURI":Ljava/lang/String;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 822
    move-object v4, v1

    move-object v5, v1

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 823
    .local v2, "fxVersion":Ljava/lang/String;
    const-string v4, "1"

    move-object v5, v2

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->compareJFXVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    .line 824
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading FXML document of version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by JavaFX runtime supporting version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4

    .line 830
    .end local v2    # "fxVersion":Ljava/lang/String;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$200(Ljavafx/fxml/FXMLLoader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v4, v5}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 831
    .local v2, "defaultNSURI":Ljava/lang/String;
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 832
    move-object v4, v2

    move-object v5, v2

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 833
    .local v3, "nsVersion":Ljava/lang/String;
    sget-object v4, Ljavafx/fxml/FXMLLoader;->JAVAFX_VERSION:Ljava/lang/String;

    move-object v5, v3

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->compareJFXVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    .line 834
    invoke-static {}, Lcom/sun/javafx/util/Logging;->getJavaFXLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading FXML document with JavaFX API of version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by JavaFX runtime of version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljavafx/fxml/FXMLLoader;->JAVAFX_VERSION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 841
    .end local v1    # "fxNSURI":Ljava/lang/String;
    .end local v2    # "defaultNSURI":Ljava/lang/String;
    .end local v3    # "nsVersion":Ljava/lang/String;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$ValueElement;->fx_id:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 842
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$600(Ljavafx/fxml/FXMLLoader;)Ljavafx/collections/ObservableMap;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$ValueElement;->fx_id:Ljava/lang/String;

    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$ValueElement;->value:Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 845
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$ValueElement;->value:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/sun/javafx/beans/IDProperty;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/beans/IDProperty;

    move-object v1, v4

    .line 847
    .local v1, "idProperty":Lcom/sun/javafx/beans/IDProperty;
    move-object v4, v1

    if-eqz v4, :cond_2

    .line 848
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/fxml/FXMLLoader$ValueElement;->getProperties()Ljava/util/Map;

    move-result-object v4

    move-object v2, v4

    .line 851
    .local v2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v4, v2

    move-object v5, v1

    invoke-interface {v5}, Lcom/sun/javafx/beans/IDProperty;->value()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 852
    move-object v4, v2

    move-object v5, v1

    invoke-interface {v5}, Lcom/sun/javafx/beans/IDProperty;->value()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$ValueElement;->fx_id:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 857
    .end local v2    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$ValueElement;->fx_id:Ljava/lang/String;

    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$ValueElement;->value:Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Ljavafx/fxml/FXMLLoader;->access$1600(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;Ljava/lang/Object;)V

    .line 859
    .end local v1    # "idProperty":Lcom/sun/javafx/beans/IDProperty;
    :cond_3
    return-void
.end method


# virtual methods
.method public abstract constructValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 891
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ValueElement;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "value":Ljava/lang/String;
    move-object v6, v1

    if-eqz v6, :cond_9

    move-object v6, v1

    const-string v7, "fx"

    .line 892
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 893
    move-object v6, v2

    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 895
    move-object v6, v3

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 896
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v7, "Invalid identifier."

    invoke-static {v6, v7}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v6

    throw v6

    .line 899
    :cond_0
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v5, v6

    .local v5, "n":I
    :goto_0
    move v6, v4

    move v7, v5

    if-ge v6, v7, :cond_2

    .line 900
    move-object v6, v3

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-nez v6, :cond_1

    .line 901
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v7, "Invalid identifier."

    invoke-static {v6, v7}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v6

    throw v6

    .line 899
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 905
    :cond_2
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljavafx/fxml/FXMLLoader$ValueElement;->fx_id:Ljava/lang/String;

    .line 943
    .end local v4    # "i":I
    .end local v5    # "n":I
    :cond_3
    :goto_1
    return-void

    .line 907
    :cond_4
    move-object v6, v2

    const-string v7, "controller"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 908
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v6}, Ljavafx/fxml/FXMLLoader;->access$000(Ljavafx/fxml/FXMLLoader;)Ljavafx/fxml/FXMLLoader$Element;

    move-result-object v6

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$Element;->parent:Ljavafx/fxml/FXMLLoader$Element;

    if-eqz v6, :cond_5

    .line 909
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v7, "fx:controller can only be applied to root element."

    invoke-static {v6, v7}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v6

    throw v6

    .line 913
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v6}, Ljavafx/fxml/FXMLLoader;->access$1000(Ljavafx/fxml/FXMLLoader;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 914
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v7, "Controller value already specified."

    invoke-static {v6, v7}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v6

    throw v6

    .line 917
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v6}, Ljavafx/fxml/FXMLLoader;->access$500(Ljavafx/fxml/FXMLLoader;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 920
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-virtual {v6}, Ljavafx/fxml/FXMLLoader;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v4, v6

    .line 923
    .line 926
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v6}, Ljavafx/fxml/FXMLLoader;->access$1800(Ljavafx/fxml/FXMLLoader;)Ljavafx/util/Callback;

    move-result-object v6

    if-nez v6, :cond_7

    .line 927
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v7, v4

    invoke-static {v7}, Lsun/reflect/misc/ReflectUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/fxml/FXMLLoader;->setController(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 935
    .line 936
    :goto_2
    goto :goto_1

    .line 921
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 922
    .local v5, "exception":Ljava/lang/ClassNotFoundException;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v7, v5

    invoke-static {v6, v7}, Ljavafx/fxml/FXMLLoader;->access$700(Ljavafx/fxml/FXMLLoader;Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v6

    throw v6

    .line 929
    .end local v5    # "exception":Ljava/lang/ClassNotFoundException;
    .restart local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    move-object v6, v0

    :try_start_2
    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v7}, Ljavafx/fxml/FXMLLoader;->access$1800(Ljavafx/fxml/FXMLLoader;)Ljavafx/util/Callback;

    move-result-object v7

    move-object v8, v4

    invoke-interface {v7, v8}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/fxml/FXMLLoader;->setController(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 931
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 932
    .local v5, "exception":Ljava/lang/InstantiationException;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v7, v5

    invoke-static {v6, v7}, Ljavafx/fxml/FXMLLoader;->access$700(Ljavafx/fxml/FXMLLoader;Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v6

    throw v6

    .line 933
    .end local v5    # "exception":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v6

    move-object v5, v6

    .line 934
    .local v5, "exception":Ljava/lang/IllegalAccessException;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v7, v5

    invoke-static {v6, v7}, Ljavafx/fxml/FXMLLoader;->access$700(Ljavafx/fxml/FXMLLoader;Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v6

    throw v6

    .line 938
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "exception":Ljava/lang/IllegalAccessException;
    :cond_8
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v7, "Invalid attribute."

    invoke-static {v6, v7}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v6

    throw v6

    .line 941
    :cond_9
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-super {v6, v7, v8, v9}, Ljavafx/fxml/FXMLLoader$Element;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public processCharacters()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 864
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ValueElement;
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$ValueElement;->value:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move-object v1, v7

    .line 865
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v1

    const-class v8, Ljavafx/beans/DefaultProperty;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Ljavafx/beans/DefaultProperty;

    move-object v2, v7

    .line 869
    .local v2, "defaultProperty":Ljavafx/beans/DefaultProperty;
    move-object v7, v2

    if-eqz v7, :cond_1

    .line 870
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v7}, Ljavafx/fxml/FXMLLoader;->access$200(Ljavafx/fxml/FXMLLoader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 871
    .local v3, "text":Ljava/lang/String;
    # getter for: Ljavafx/fxml/FXMLLoader;->extraneousWhitespacePattern:Ljava/util/regex/Pattern;
    invoke-static {}, Ljavafx/fxml/FXMLLoader;->access$1700()Ljava/util/regex/Pattern;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 873
    move-object v7, v2

    invoke-interface {v7}, Ljavafx/beans/DefaultProperty;->value()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 874
    .local v4, "defaultPropertyName":Ljava/lang/String;
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/fxml/FXMLLoader$ValueElement;->getValueAdapter()Lcom/sun/javafx/fxml/BeanAdapter;

    move-result-object v7

    move-object v5, v7

    .line 876
    .local v5, "valueAdapter":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v7, v8}, Lcom/sun/javafx/fxml/BeanAdapter;->isReadOnly(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-class v7, Ljava/util/List;

    move-object v8, v5

    move-object v9, v4

    .line 877
    invoke-virtual {v8, v9}, Lcom/sun/javafx/fxml/BeanAdapter;->getType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 878
    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v7, v8}, Lcom/sun/javafx/fxml/BeanAdapter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    move-object v6, v7

    .line 879
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v7, v6

    move-object v8, v0

    move-object v9, v0

    move-object v10, v4

    move-object v11, v3

    invoke-direct {v8, v9, v10, v11}, Ljavafx/fxml/FXMLLoader$ValueElement;->getListValue(Ljavafx/fxml/FXMLLoader$Element;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 880
    .line 883
    .line 886
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 881
    :cond_0
    move-object v7, v5

    move-object v8, v4

    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/fxml/BeanAdapter;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 884
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "defaultPropertyName":Ljava/lang/String;
    .end local v5    # "valueAdapter":Lcom/sun/javafx/fxml/BeanAdapter;
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$ValueElement;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not have a default property."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v7

    throw v7
.end method

.method public processEndElement()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 758
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ValueElement;
    move-object v3, v0

    invoke-super {v3}, Ljavafx/fxml/FXMLLoader$Element;->processEndElement()V

    .line 761
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$ValueElement;->value:Ljava/lang/Object;

    instance-of v3, v3, Ljavafx/util/Builder;

    if-eqz v3, :cond_0

    .line 762
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$ValueElement;->value:Ljava/lang/Object;

    check-cast v3, Ljavafx/util/Builder;

    move-object v1, v3

    .line 763
    .local v1, "builder":Ljavafx/util/Builder;, "Ljavafx/util/Builder<Ljava/lang/Object;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljavafx/util/Builder;->build()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/fxml/FXMLLoader$ValueElement;->updateValue(Ljava/lang/Object;)V

    .line 765
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/fxml/FXMLLoader$ValueElement;->processValue()V

    .line 766
    .line 770
    .end local v1    # "builder":Ljavafx/util/Builder;, "Ljavafx/util/Builder<Ljava/lang/Object;>;"
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/fxml/FXMLLoader$ValueElement;->processEventHandlerAttributes()V

    .line 773
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$ValueElement;->staticPropertyAttributes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 774
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$ValueElement;->staticPropertyAttributes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_1
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/fxml/FXMLLoader$Attribute;

    move-object v2, v3

    .line 775
    .local v2, "attribute":Ljavafx/fxml/FXMLLoader$Attribute;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/fxml/FXMLLoader$ValueElement;->processPropertyAttribute(Ljavafx/fxml/FXMLLoader$Attribute;)V

    .line 776
    goto :goto_1

    .line 767
    .end local v2    # "attribute":Ljavafx/fxml/FXMLLoader$Attribute;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/fxml/FXMLLoader$ValueElement;->processInstancePropertyAttributes()V

    goto :goto_0

    .line 780
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$ValueElement;->staticPropertyElements:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 781
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$ValueElement;->staticPropertyElements:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_2
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/fxml/FXMLLoader$PropertyElement;

    move-object v2, v3

    .line 782
    .local v2, "element":Ljavafx/fxml/FXMLLoader$PropertyElement;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$ValueElement;->value:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$PropertyElement;->sourceType:Ljava/lang/Class;

    move-object v5, v2

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$PropertyElement;->name:Ljava/lang/String;

    move-object v6, v2

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$PropertyElement;->value:Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lcom/sun/javafx/fxml/BeanAdapter;->put(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 783
    goto :goto_2

    .line 786
    .end local v2    # "element":Ljavafx/fxml/FXMLLoader$PropertyElement;
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$ValueElement;->parent:Ljavafx/fxml/FXMLLoader$Element;

    if-eqz v3, :cond_3

    .line 787
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$ValueElement;->parent:Ljavafx/fxml/FXMLLoader$Element;

    invoke-virtual {v3}, Ljavafx/fxml/FXMLLoader$Element;->isCollection()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 788
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$ValueElement;->parent:Ljavafx/fxml/FXMLLoader$Element;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$ValueElement;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljavafx/fxml/FXMLLoader$Element;->add(Ljava/lang/Object;)V

    .line 793
    :cond_3
    :goto_3
    return-void

    .line 790
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$ValueElement;->parent:Ljavafx/fxml/FXMLLoader$Element;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$ValueElement;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljavafx/fxml/FXMLLoader$Element;->set(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public processStartElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 744
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ValueElement;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/fxml/FXMLLoader$Element;->processStartElement()V

    .line 746
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/fxml/FXMLLoader$ValueElement;->constructValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/fxml/FXMLLoader$ValueElement;->updateValue(Ljava/lang/Object;)V

    .line 748
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader$ValueElement;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljavafx/util/Builder;

    if-eqz v1, :cond_0

    .line 749
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/fxml/FXMLLoader$ValueElement;->processInstancePropertyAttributes()V

    .line 753
    :goto_0
    return-void

    .line 751
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/fxml/FXMLLoader$ValueElement;->processValue()V

    goto :goto_0
.end method
