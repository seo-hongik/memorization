import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import dto.Car;
import dto.User;

import java.io.BufferedWriter;
import java.io.Writer;
import java.util.Arrays;
import java.util.List;

public class Main {

    public static void main(String[] args) throws JsonProcessingException {
        System.out.println("main");
        ObjectMapper objectMapper= new ObjectMapper();

        User user = new User();
        user.setName("홍길동");
        user.setAge(10);

        Car car1 = new Car();
        car1.setName("K5");
        car1.setCarNumber("11가 1111");
        car1.setType("sedan");

        Car car2 = new Car();
        car2.setName("Q5");
        car2.setCarNumber("22가 2222");
        car2.setType("SUV");

        List<Car> carList = Arrays.asList(car1,car2);
        user.setCars(carList);

        String json = objectMapper.writeValueAsString(user);
        System.out.println(json);

        // json 노드 값 가져옴
        JsonNode jsonNode = objectMapper.readTree(json);
        String _name = jsonNode.get("name").asText();
        int _age = jsonNode.get("age").asInt();
        System.out.println("name : "+_name);
        System.out.println("age : "+_age);

        //리스트 가져오는 방식
        JsonNode carJsonList = jsonNode.get("cars");
        ArrayNode arrayNode = (ArrayNode)carJsonList;
        List<Car> _cars = objectMapper.convertValue(arrayNode, new TypeReference<List<Car>>() {});
        System.out.println(_cars);

        //json node 변경
        ObjectNode objectNode = (ObjectNode) jsonNode;
        objectNode.put("name","steve");
        objectNode.put("age",20);

        System.out.println(objectNode.toPrettyString());
    }
}
