.class Ljavafx/fxml/FXMLLoader$IncludeElement;
.super Ljavafx/fxml/FXMLLoader$ValueElement;
.source "FXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/FXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncludeElement"
.end annotation


# instance fields
.field public charset:Ljava/nio/charset/Charset;

.field public resources:Ljava/util/ResourceBundle;

.field public source:Ljava/lang/String;

.field final synthetic this$0:Ljavafx/fxml/FXMLLoader;


# direct methods
.method private constructor <init>(Ljavafx/fxml/FXMLLoader;)V
    .locals 5

    .prologue
    .line 1071
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$IncludeElement;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/fxml/FXMLLoader$ValueElement;-><init>(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader$1;)V

    .line 1072
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$IncludeElement;->source:Ljava/lang/String;

    .line 1073
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v3}, Ljavafx/fxml/FXMLLoader;->access$900(Ljavafx/fxml/FXMLLoader;)Ljava/util/ResourceBundle;

    move-result-object v3

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$IncludeElement;->resources:Ljava/util/ResourceBundle;

    .line 1074
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v3}, Ljavafx/fxml/FXMLLoader;->access$2200(Ljavafx/fxml/FXMLLoader;)Ljava/nio/charset/Charset;

    move-result-object v3

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$IncludeElement;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader$1;)V
    .locals 5

    .prologue
    .line 1071
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$IncludeElement;
    move-object v1, p1

    .local v1, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v2, p2

    .local v2, "x1":Ljavafx/fxml/FXMLLoader$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/fxml/FXMLLoader$IncludeElement;-><init>(Ljavafx/fxml/FXMLLoader;)V

    return-void
.end method


# virtual methods
.method public constructValue()Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1109
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$IncludeElement;
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$IncludeElement;->source:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 1110
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v8, "source is required."

    invoke-static {v7, v8}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v7

    throw v7

    .line 1114
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-virtual {v7}, Ljavafx/fxml/FXMLLoader;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object v2, v7

    .line 1115
    .local v2, "cl":Ljava/lang/ClassLoader;
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$IncludeElement;->source:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_1

    .line 1116
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Ljavafx/fxml/FXMLLoader$IncludeElement;->source:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    move-object v1, v7

    .line 1117
    .local v1, "location":Ljava/net/URL;
    move-object v7, v1

    if-nez v7, :cond_3

    .line 1118
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot resolve path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$IncludeElement;->source:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v7

    throw v7

    .line 1121
    .end local v1    # "location":Ljava/net/URL;
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v7}, Ljavafx/fxml/FXMLLoader;->access$800(Ljavafx/fxml/FXMLLoader;)Ljava/net/URL;

    move-result-object v7

    if-nez v7, :cond_2

    .line 1122
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v8, "Base location is undefined."

    invoke-static {v7, v8}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v7

    throw v7

    .line 1125
    :cond_2
    new-instance v7, Ljava/net/URL;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v9}, Ljavafx/fxml/FXMLLoader;->access$800(Ljavafx/fxml/FXMLLoader;)Ljava/net/URL;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Ljavafx/fxml/FXMLLoader$IncludeElement;->source:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v1, v7

    .line 1128
    .restart local v1    # "location":Ljava/net/URL;
    :cond_3
    new-instance v7, Ljavafx/fxml/FXMLLoader;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Ljavafx/fxml/FXMLLoader$IncludeElement;->resources:Ljava/util/ResourceBundle;

    move-object v11, v0

    iget-object v11, v11, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    .line 1129
    invoke-static {v11}, Ljavafx/fxml/FXMLLoader;->access$2000(Ljavafx/fxml/FXMLLoader;)Ljavafx/util/BuilderFactory;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v12}, Ljavafx/fxml/FXMLLoader;->access$1800(Ljavafx/fxml/FXMLLoader;)Ljavafx/util/Callback;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Ljavafx/fxml/FXMLLoader$IncludeElement;->charset:Ljava/nio/charset/Charset;

    move-object v14, v0

    iget-object v14, v14, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    .line 1130
    invoke-static {v14}, Ljavafx/fxml/FXMLLoader;->access$2300(Ljavafx/fxml/FXMLLoader;)Ljava/util/LinkedList;

    move-result-object v14

    invoke-direct/range {v8 .. v14}, Ljavafx/fxml/FXMLLoader;-><init>(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;Ljavafx/util/Callback;Ljava/nio/charset/Charset;Ljava/util/LinkedList;)V

    move-object v3, v7

    .line 1131
    .local v3, "fxmlLoader":Ljavafx/fxml/FXMLLoader;
    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v7, v8}, Ljavafx/fxml/FXMLLoader;->access$2402(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader;)Ljavafx/fxml/FXMLLoader;

    move-result-object v7

    .line 1133
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v8, v0

    iget-object v8, v8, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v9, v3

    invoke-static {v7, v8, v9}, Ljavafx/fxml/FXMLLoader;->access$2500(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1134
    new-instance v7, Ljava/io/IOException;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    const-string v9, "Including \"%s\" in \"%s\" created cyclic reference."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-object v13, v3

    .line 1137
    invoke-static {v13}, Ljavafx/fxml/FXMLLoader;->access$800(Ljavafx/fxml/FXMLLoader;)Ljava/net/URL;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x1

    move-object v13, v0

    iget-object v13, v13, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    .line 1138
    invoke-static {v13}, Ljavafx/fxml/FXMLLoader;->access$800(Ljavafx/fxml/FXMLLoader;)Ljava/net/URL;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1135
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1140
    :cond_4
    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljavafx/fxml/FXMLLoader;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1141
    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v8}, Ljavafx/fxml/FXMLLoader;->access$500(Ljavafx/fxml/FXMLLoader;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljavafx/fxml/FXMLLoader;->impl_setStaticLoad(Z)V

    .line 1143
    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v8}, Ljavafx/fxml/FXMLLoader;->access$2600(Ljavafx/fxml/FXMLLoader;)Ljava/lang/Class;

    move-result-object v8

    invoke-static {v7, v8}, Ljavafx/fxml/FXMLLoader;->access$2700(Ljavafx/fxml/FXMLLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 1145
    .local v4, "value":Ljava/lang/Object;
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$IncludeElement;->fx_id:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 1146
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v0

    iget-object v8, v8, Ljavafx/fxml/FXMLLoader$IncludeElement;->fx_id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Controller"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 1147
    .local v5, "id":Ljava/lang/String;
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/fxml/FXMLLoader;->getController()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 1149
    .local v6, "controller":Ljava/lang/Object;
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v7}, Ljavafx/fxml/FXMLLoader;->access$600(Ljavafx/fxml/FXMLLoader;)Ljavafx/collections/ObservableMap;

    move-result-object v7

    move-object v8, v5

    move-object v9, v6

    invoke-interface {v7, v8, v9}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1150
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v8, v5

    move-object v9, v6

    invoke-static {v7, v8, v9}, Ljavafx/fxml/FXMLLoader;->access$1600(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1153
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "controller":Ljava/lang/Object;
    :cond_5
    move-object v7, v4

    move-object v0, v7

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$IncludeElement;
    return-object v0
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1079
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$IncludeElement;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "value":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_6

    .line 1080
    move-object v4, v2

    const-string v5, "source"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1081
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1082
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v4

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Lcom/sun/javafx/fxml/LoadListener;->readInternalAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    :cond_0
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/fxml/FXMLLoader$IncludeElement;->source:Ljava/lang/String;

    .line 1105
    :goto_0
    return-void

    .line 1086
    :cond_1
    move-object v4, v2

    const-string v5, "resources"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1087
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1088
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v4

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Lcom/sun/javafx/fxml/LoadListener;->readInternalAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    :cond_2
    move-object v4, v0

    move-object v5, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    .line 1092
    invoke-static {v7}, Ljavafx/fxml/FXMLLoader;->access$900(Ljavafx/fxml/FXMLLoader;)Ljava/util/ResourceBundle;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 1091
    invoke-static {v5, v6, v7}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v5

    iput-object v5, v4, Ljavafx/fxml/FXMLLoader$IncludeElement;->resources:Ljava/util/ResourceBundle;

    goto :goto_0

    .line 1093
    :cond_3
    move-object v4, v2

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1094
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1095
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$IncludeElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v4

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Lcom/sun/javafx/fxml/LoadListener;->readInternalAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    :cond_4
    move-object v4, v0

    move-object v5, v3

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    iput-object v5, v4, Ljavafx/fxml/FXMLLoader$IncludeElement;->charset:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 1100
    :cond_5
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Ljavafx/fxml/FXMLLoader$ValueElement;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1103
    :cond_6
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Ljavafx/fxml/FXMLLoader$ValueElement;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
